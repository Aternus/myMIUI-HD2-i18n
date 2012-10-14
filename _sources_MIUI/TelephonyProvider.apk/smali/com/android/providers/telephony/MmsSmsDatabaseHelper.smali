.class public Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MmsSmsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 279
    const-string v0, "mmssms.db"

    const/4 v1, 0x0

    const/16 v2, 0x3c

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 280
    iput-object p1, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 281
    return-void
.end method

.method private createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 781
    const-string v0, "CREATE TABLE canonical_addresses (_id INTEGER PRIMARY KEY,address TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 793
    const-string v0, "CREATE TABLE threads (_id INTEGER PRIMARY KEY,date INTEGER DEFAULT 0,server_date INTEGER DEFAULT 0,message_count INTEGER DEFAULT 0,unread_count INTEGER DEFAULT 0,photo_id TEXT,recipient_addresses TEXT,recipient_names TEXT,is_sp TEXT,person_id TEXT,recipient_ids TEXT,snippet TEXT,snippet_cs INTEGER DEFAULT 0,read INTEGER DEFAULT 1,type INTEGER DEFAULT 0,error INTEGER DEFAULT 0,has_attachment INTEGER DEFAULT 0,state INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 816
    const-string v0, "CREATE TABLE pending_msgs (_id INTEGER PRIMARY KEY,proto_type INTEGER,msg_id INTEGER,msg_type INTEGER,err_type INTEGER,err_code INTEGER,retry_index INTEGER NOT NULL DEFAULT 0,due_time INTEGER,last_try INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 827
    return-void
.end method

.method private createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createUpdateThreadsDateTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 832
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createUpdateThreadUnreadCountOnPduDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 835
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 838
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 841
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET server_date =    (SELECT server_date FROM       (SELECT server_date, thread_id FROM pdu       UNION SELECT server_date, thread_id FROM sms)    WHERE thread_id = old.thread_id ORDER BY server_date DESC LIMIT 1)  WHERE threads._id = old.thread_id;  UPDATE threads SET date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu         UNION SELECT date, thread_id FROM sms)    WHERE thread_id = old.thread_id ORDER BY date DESC LIMIT 1)  WHERE threads._id = old.thread_id;  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 846
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_pdu AFTER DELETE ON pdu BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 857
    const-string v0, "CREATE TRIGGER delete_obsolete_threads_when_update_pdu AFTER UPDATE OF thread_id ON pdu WHEN old.thread_id != new.thread_id BEGIN   DELETE FROM threads   WHERE     _id = old.thread_id     AND _id NOT IN     (SELECT thread_id FROM sms      UNION SELECT thread_id from pdu); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 870
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_insert AFTER INSERT ON pdu WHEN new.m_type=130  OR new.m_type=135 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 891
    const-string v0, "CREATE TRIGGER insert_mms_pending_on_update AFTER UPDATE ON pdu WHEN new.m_type=128  AND new.msg_box=4  AND old.msg_box!=4 BEGIN   INSERT INTO pending_msgs    (proto_type,     msg_id,     msg_type,     err_type,     err_code,     retry_index,     due_time)   VALUES     (1,      new._id,      new.m_type,0,0,0,0);END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 912
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_update AFTER UPDATE ON pdu WHEN old.msg_box=4  AND new.msg_box!=4 BEGIN   DELETE FROM pending_msgs  WHERE msg_id=new._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 922
    const-string v0, "CREATE TRIGGER delete_mms_pending_on_delete AFTER DELETE ON pdu BEGIN   DELETE FROM pending_msgs  WHERE msg_id=old._id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 933
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_mms   AFTER UPDATE OF err_type ON pending_msgs   WHEN (OLD.err_type < 10 AND NEW.err_type >= 10)    OR (OLD.err_type >= 10 AND NEW.err_type < 10) BEGIN  UPDATE threads SET error =     CASE      WHEN NEW.err_type >= 10 THEN error + 1      ELSE error - 1    END   WHERE _id =   (SELECT DISTINCT thread_id    FROM pdu    WHERE _id = NEW.msg_id); END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 950
    const-string v0, "CREATE TRIGGER update_threads_error_on_delete_mms   BEFORE DELETE ON pdu  WHEN OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 962
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 975
    const-string v0, "CREATE TRIGGER update_threads_error_on_update_sms   AFTER UPDATE OF type ON sms  WHEN (OLD.type != 5 AND NEW.type = 5)    OR (OLD.type = 5 AND NEW.type != 5) BEGIN   UPDATE threads SET error =     CASE      WHEN NEW.type = 5 THEN error + 1      ELSE error - 1    END   WHERE _id = NEW.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method private createIndices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 594
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 595
    return-void
.end method

.method private createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 609
    const-string v0, "CREATE TABLE pdu (_id INTEGER PRIMARY KEY,thread_id INTEGER,date INTEGER,server_date INTEGER,msg_box INTEGER,read INTEGER DEFAULT 0,m_id TEXT,sub TEXT,sub_cs INTEGER,ct_t TEXT,ct_l TEXT,exp INTEGER,m_cls TEXT,m_type INTEGER,v INTEGER,m_size INTEGER,pri INTEGER,rr INTEGER,rpt_a INTEGER,resp_st INTEGER,st INTEGER,tr_id TEXT,retr_st INTEGER,retr_txt TEXT,retr_txt_cs INTEGER,read_status INTEGER,ct_cls INTEGER,resp_txt TEXT,d_tm INTEGER,d_rpt INTEGER,locked INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,timed INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 645
    const-string v0, "CREATE TABLE addr (_id INTEGER PRIMARY KEY,msg_id INTEGER,contact_id INTEGER,address TEXT,type INTEGER,charset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 653
    const-string v0, "CREATE TABLE part (_id INTEGER PRIMARY KEY,mid INTEGER,seq INTEGER DEFAULT 0,ct TEXT,name TEXT,chset INTEGER,cd TEXT,fn TEXT,cid TEXT,cl TEXT,ctt_s INTEGER,ctt_t TEXT,_data TEXT,text TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 669
    const-string v0, "CREATE TABLE rate (sent_time INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 672
    const-string v0, "CREATE TABLE drm (_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 679
    const-string v0, "CREATE TRIGGER part_cleanup DELETE ON pdu BEGIN   DELETE FROM part  WHERE mid=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    const-string v0, "CREATE TRIGGER addr_cleanup DELETE ON pdu BEGIN   DELETE FROM addr  WHERE msg_id=old._id;END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 694
    const-string v0, "CREATE TRIGGER cleanup_delivery_and_read_report AFTER DELETE ON pdu WHEN old.m_type=128 BEGIN   DELETE FROM pdu  WHERE (m_type=134    OR m_type=136)    AND m_id=old.m_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 707
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 708
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 709
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 710
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method private createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 716
    const-string v0, "CREATE TABLE sms (_id INTEGER PRIMARY KEY,thread_id INTEGER,address TEXT,person INTEGER,date INTEGER,server_date INTEGER,protocol INTEGER,read INTEGER DEFAULT 0,status INTEGER DEFAULT -1,type INTEGER,reply_path_present INTEGER,subject TEXT,body TEXT,service_center TEXT,locked INTEGER DEFAULT 0,error_code INTEGER DEFAULT 0,seen INTEGER DEFAULT 0,timed INTEGER DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 744
    const-string v0, "CREATE TABLE raw (_id INTEGER PRIMARY KEY,date INTEGER,reference_number INTEGER,count INTEGER,sequence INTEGER,destination_port INTEGER,address TEXT,pdu TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 754
    const-string v0, "CREATE TABLE attachments (sms_id INTEGER,content_url TEXT,offset INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 763
    const-string v0, "CREATE TABLE sr_pending (reference_number INTEGER,action TEXT,data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method private createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 599
    :try_start_0
    const-string v1, "CREATE INDEX IF NOT EXISTS typeThreadIdIndex ON sms (type, thread_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 602
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating indices: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createUpdateThreadUnreadCountOnPduDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1358
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_delete AFTER DELETE ON pdu BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128))  WHERE threads._id = old.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = old.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method private createUpdateThreadsDateOnPduTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1311
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     server_date = new.server_date,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1317
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box, server_date  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     server_date = new.server_date,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1324
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_delete AFTER DELETE ON pdu BEGIN   UPDATE threads SET server_date =    (SELECT server_date FROM       (SELECT server_date, thread_id FROM pdu       UNION SELECT server_date, thread_id FROM sms)    WHERE thread_id = old.thread_id ORDER BY server_date DESC LIMIT 1)  WHERE threads._id = old.thread_id;  UPDATE threads SET date =    (SELECT date FROM        (SELECT date * 1000 AS date, thread_id FROM pdu         UNION SELECT date, thread_id FROM sms)    WHERE thread_id = old.thread_id ORDER BY date DESC LIMIT 1)  WHERE threads._id = old.thread_id;  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = old.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = old.thread_id;   UPDATE threads SET snippet =    (SELECT snippet FROM     (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu      UNION SELECT date, body AS snippet, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id;   UPDATE threads SET snippet_cs =    (SELECT snippet_cs FROM     (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu      UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)    WHERE thread_id = OLD.thread_id ORDER BY date DESC LIMIT 1)   WHERE threads._id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1325
    return-void
.end method

.method private createUpdateThreadsDateTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1329
    const-string v0, "CREATE TRIGGER pdu_update_thread_on_insert AFTER INSERT ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     server_date = new.server_date,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1335
    const-string v0, "CREATE TRIGGER sms_update_thread_on_insert AFTER INSERT ON sms BEGIN  UPDATE threads SET    date = new.date,     server_date = new.server_date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1339
    const-string v0, "CREATE TRIGGER pdu_update_thread_date_subject_on_update AFTER  UPDATE OF date, sub, msg_box, server_date  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET    date = new.date * 1000,     server_date = new.server_date,     snippet = new.sub,     snippet_cs = new.sub_cs  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1346
    const-string v0, "CREATE TRIGGER sms_update_thread_date_subject_on_update AFTER  UPDATE OF date, body, type, server_date  ON sms BEGIN  UPDATE threads SET    date = new.date,     server_date = new.server_date,     snippet = new.body,     snippet_cs = 0  WHERE threads._id = new.thread_id;   UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND sms.type != 3) +      (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = new.thread_id        AND (m_type=132 OR m_type=130 OR m_type=128)        AND msg_box != 3)   WHERE threads._id = new.thread_id;  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method private createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 567
    :try_start_0
    const-string v1, "CREATE VIRTUAL TABLE words USING FTS3 (_id INTEGER PRIMARY KEY, index_text TEXT, source_id INTEGER, table_to_use INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 574
    const-string v1, "CREATE TRIGGER sms_words_update AFTER UPDATE ON sms BEGIN UPDATE words  SET index_text = NEW.body WHERE (source_id=NEW._id AND table_to_use=1);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 577
    const-string v1, "CREATE TRIGGER sms_words_delete AFTER DELETE ON sms BEGIN DELETE FROM   words WHERE source_id = OLD._id AND table_to_use = 1; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 581
    const-string v1, "CREATE TRIGGER mms_words_update AFTER UPDATE ON part BEGIN UPDATE words  SET index_text = NEW.text WHERE (source_id=NEW._id AND table_to_use=2);  END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 584
    const-string v1, "CREATE TRIGGER mms_words_delete AFTER DELETE ON part BEGIN DELETE FROM  words WHERE source_id = OLD._id AND table_to_use = 2; END;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 587
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 589
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got exception creating words table: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteObsoleteThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 8
    .parameter "context"
    .parameter "db"
    .parameter "threadId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 441
    const-string v2, "threads"

    const-string v3, "_id = ? AND _id NOT IN          (SELECT thread_id FROM sms WHERE thread_id is not null     UNION SELECT thread_id FROM pdu WHERE thread_id is not null)"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 446
    .local v0, count:I
    if-lez v0, :cond_0

    .line 447
    const-string v2, "MmsSmsDatabaseHelper"

    const-string v3, "obsoleted thread %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SMS_THREADS_OBSOLETED_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "_id"

    new-array v3, v7, [J

    aput-wide p2, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 450
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v7

    .line 453
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    move v2, v6

    goto :goto_0
.end method

.method public static deleteObsoleteThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 14
    .parameter "context"
    .parameter "db"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v0, "threads"

    const-string v13, "_id"

    .line 406
    const-string v3, "_id NOT IN (SELECT DISTINCT thread_id FROM sms WHERE thread_id is not null UNION SELECT DISTINCT thread_id FROM pdu WHERE thread_id is not null)"

    .line 408
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 409
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 411
    .local v10, threadIds:[J
    :try_start_0
    const-string v1, "threads"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 413
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 414
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [J

    .line 415
    const/4 v0, -0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 416
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    invoke-interface {v8}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_0

    .line 425
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 420
    :cond_1
    :try_start_1
    const-string v0, "threads"

    const-string v1, "_id NOT IN (SELECT DISTINCT thread_id FROM sms UNION SELECT DISTINCT thread_id FROM pdu)"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 424
    if-eqz v8, :cond_2

    .line 425
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_2
    if-nez v10, :cond_3

    move v0, v11

    .line 437
    :goto_1
    return v0

    .line 433
    :cond_3
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "obsoleted threads: %s"

    new-array v2, v12, [Ljava/lang/Object;

    aput-object v10, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.SMS_THREADS_OBSOLETED_ACTION"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "_id"

    invoke-virtual {v9, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 436
    invoke-virtual {p0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    array-length v0, v10

    goto :goto_1
.end method

.method public static deleteOneSms(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 6
    .parameter "context"
    .parameter "db"
    .parameter "message_id"

    .prologue
    .line 457
    invoke-static {p1, p2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getThreadIdFromMsgId(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v1

    .line 460
    .local v1, thread_id:J
    const-string v3, "sms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 461
    .local v0, rows:I
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 463
    invoke-static {p0, p1, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 465
    :cond_0
    return v0
.end method

.method private dropAll(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1402
    const-string v0, "DROP TABLE IF EXISTS canonical_addresses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1403
    const-string v0, "DROP TABLE IF EXISTS threads"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1404
    const-string v0, "DROP TABLE IF EXISTS pending_msgs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1405
    const-string v0, "DROP TABLE IF EXISTS sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1406
    const-string v0, "DROP TABLE IF EXISTS raw"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1407
    const-string v0, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1408
    const-string v0, "DROP TABLE IF EXISTS thread_ids"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1409
    const-string v0, "DROP TABLE IF EXISTS sr_pending"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1410
    const-string v0, "DROP TABLE IF EXISTS pdu;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1411
    const-string v0, "DROP TABLE IF EXISTS addr;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    const-string v0, "DROP TABLE IF EXISTS part;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1413
    const-string v0, "DROP TABLE IF EXISTS rate;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1414
    const-string v0, "DROP TABLE IF EXISTS drm;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    return-void
.end method

.method private getAddressesByRecipientId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1694
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1695
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1697
    invoke-direct {p0, v4, p2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->lookUpAddressByRecipientId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object v4

    .line 1698
    if-nez v4, :cond_0

    .line 1699
    const-string v0, "MmsSmsDatabaseHelper"

    const-string v1, "null address when looking up address in getSpaceSeperatedAddressByRecipientId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    const/4 v0, 0x0

    .line 1704
    :goto_1
    return-object v0

    .line 1702
    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1696
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1704
    goto :goto_1
.end method

.method private getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v0, "MmsSmsDatabaseHelper"

    .line 1772
    const-string v0, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\' AND raw_contact_id IN (SELECT raw_contact_id  FROM phone_lookup WHERE normalized_number GLOB(\'+*\'))"

    const-string v1, "+"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1774
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$400()[Ljava/lang/String;

    move-result-object v2

    new-array v4, v8, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1780
    new-instance v6, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;

    invoke-direct {v6, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;-><init>(Ljava/lang/String;)V

    .line 1782
    if-eqz v0, :cond_1

    .line 1784
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1785
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    #setter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPersonId:J
    invoke-static {v6, v1, v2}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$302(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;J)J

    move-result-wide v1

    cmp-long v1, v1, v10

    if-lez v1, :cond_0

    .line 1786
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mName:Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$002(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1787
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    #setter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPhotoId:I
    invoke-static {v6, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$102(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;I)I

    .line 1788
    const/4 v1, 0x0

    #setter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mIsSP:Z
    invoke-static {v6, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$202(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1794
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1798
    :cond_1
    :goto_0
    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPersonId:J
    invoke-static {v6}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$300(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1799
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/String;)Landroid/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1800
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1801
    invoke-virtual {v0}, Landroid/telephony/PhoneNumberUtils$PhoneNumber;->getEffectiveNumber()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 1803
    :goto_1
    iget-object v0, p0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$500()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "addr=?"

    new-array v4, v8, [Ljava/lang/String;

    aput-object v7, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1809
    if-eqz v0, :cond_3

    .line 1811
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1812
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mName:Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$002(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1813
    const/4 v1, 0x1

    #setter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mIsSP:Z
    invoke-static {v6, v1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$202(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1819
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1823
    :cond_3
    :goto_2
    return-object v6

    .line 1791
    :catch_0
    move-exception v1

    .line 1792
    :try_start_2
    const-string v2, "MmsSmsDatabaseHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1794
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1816
    :catch_1
    move-exception v1

    .line 1817
    :try_start_3
    const-string v2, "MmsSmsDatabaseHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1819
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4
    move-object v7, p1

    goto :goto_1
.end method

.method private getContactInfoByAddress(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .parameter

    .prologue
    .line 1762
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;

    move-result-object v0

    .line 1763
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1764
    const-string v2, "recipient_names"

    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$000(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v2, "photo_id"

    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPhotoId:I
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$100(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1766
    const-string v2, "is_sp"

    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mIsSP:Z
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$200(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1767
    const-string v2, "person_id"

    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPersonId:J
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$300(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1768
    return-object v1

    .line 1766
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 288
    const-class v0, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    if-nez v1, :cond_0

    .line 289
    new-instance v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;

    .line 291
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->mInstance:Lcom/android/providers/telephony/MmsSmsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getThreadIdFromMsgId(Landroid/database/sqlite/SQLiteDatabase;I)J
    .locals 11
    .parameter "db"
    .parameter "message_id"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 469
    const/4 v9, -0x1

    .line 471
    .local v9, thread_id:I
    const-string v1, "sms"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v2, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 473
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 474
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 477
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_1
    int-to-long v0, v9

    return-wide v0
.end method

.method private initHostDateForExistingThreads(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1373
    const-string v0, "UPDATE threads SET server_date = date"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1374
    const-string v0, "UPDATE sms SET server_date = date"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1375
    const-string v0, "UPDATE pdu SET server_date = date * 1000"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1376
    return-void
.end method

.method private lookUpAddressByRecipientId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1671
    const-string v1, "canonical_addresses"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "address"

    aput-object v0, v2, v6

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v0, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1679
    if-eqz v0, :cond_1

    .line 1681
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1682
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1687
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 1690
    :goto_0
    return-object v0

    .line 1687
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move-object v0, v5

    .line 1690
    goto :goto_0

    .line 1684
    :catch_0
    move-exception v1

    .line 1685
    :try_start_1
    const-string v2, "MmsSmsDatabaseHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private populateWordsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .parameter "db"

    .prologue
    .line 497
    const-string v12, "words"

    .line 499
    .local v12, TABLE_WORDS:Ljava/lang/String;
    const-string v5, "sms"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "body"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 508
    .local v18, smsRows:Landroid/database/Cursor;
    if-eqz v18, :cond_1

    .line 509
    const/4 v4, -0x1

    :try_start_0
    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 510
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 511
    .local v14, cv:Landroid/content/ContentValues;
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 512
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 514
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 515
    .local v15, id:J
    const/4 v4, 0x1

    move-object/from16 v0, v18

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 517
    .local v13, body:Ljava/lang/String;
    const-string v4, "_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 518
    const-string v4, "index_text"

    invoke-virtual {v14, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v4, "source_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    const-string v4, "table_to_use"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    const-string v4, "words"

    const-string v5, "index_text"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 525
    .end local v13           #body:Ljava/lang/String;
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v15           #id:J
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_0

    .line 526
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v4

    .line 525
    :cond_1
    if-eqz v18, :cond_2

    .line 526
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 532
    :cond_2
    const-string v5, "part"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "text"

    aput-object v7, v6, v4

    const-string v7, "ct = \'text/plain\'"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 541
    .local v17, mmsRows:Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 542
    const/4 v4, -0x1

    :try_start_1
    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 543
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 544
    .restart local v14       #cv:Landroid/content/ContentValues;
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 545
    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    .line 547
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 548
    .restart local v15       #id:J
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 550
    .restart local v13       #body:Ljava/lang/String;
    const-string v4, "_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 551
    const-string v4, "index_text"

    invoke-virtual {v14, v4, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v4, "source_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 553
    const-string v4, "table_to_use"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    const-string v4, "words"

    const-string v5, "index_text"

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 558
    .end local v13           #body:Ljava/lang/String;
    .end local v14           #cv:Landroid/content/ContentValues;
    .end local v15           #id:J
    :catchall_1
    move-exception v4

    if-eqz v17, :cond_3

    .line 559
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 558
    :cond_4
    if-eqz v17, :cond_5

    .line 559
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 563
    :cond_5
    return-void
.end method

.method public static updateAllThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "db"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const-string v4, ")"

    .line 384
    if-nez p2, :cond_0

    .line 385
    const-string p2, ""

    .line 389
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _id FROM threads WHERE _id IN (SELECT DISTINCT thread_id FROM sms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, query:Ljava/lang/String;
    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 392
    .local v0, c:Landroid/database/Cursor;
    if-eqz p0, :cond_2

    .line 394
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {p0, p1, v2, v3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 387
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #query:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHERE ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 398
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v1       #query:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_2
    invoke-static {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteObsoleteThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)I

    .line 403
    return-void
.end method

.method public static updateThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter "context"
    .parameter "db"
    .parameter "thread_id"

    .prologue
    const/4 v7, 0x0

    const-string v11, ";"

    const-string v10, " ORDER BY date DESC LIMIT 1),"

    const-string v9, "  WHERE threads._id = "

    const-string v8, "     WHERE thread_id = "

    .line 295
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-gez v5, :cond_1

    .line 296
    invoke-static {p0, p1, v7, v7}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateAllThreads(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->deleteObsoleteThread(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  UPDATE threads SET message_count =      (SELECT COUNT(sms._id) FROM sms LEFT JOIN threads       ON threads._id = thread_id      WHERE thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        AND sms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != 3) + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     (SELECT COUNT(pdu._id) FROM pdu LEFT JOIN threads "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      ON threads._id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thread_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "      WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "thread_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        AND (m_type=132 OR m_type=130 OR m_type=128)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "msg_box"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != 3) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  WHERE threads._id = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  UPDATE threads  SET  server_date =    (SELECT server_date FROM       (SELECT server_date, thread_id FROM pdu       UNION SELECT server_date, thread_id FROM sms)    WHERE thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ORDER BY server_date DESC LIMIT 1),"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  date ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    (SELECT date FROM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        (SELECT date * 1000 AS date, thread_id FROM pdu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "         UNION SELECT date, thread_id FROM sms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     WHERE thread_id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  snippet ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    (SELECT snippet FROM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        (SELECT date * 1000 AS date, sub AS snippet, thread_id FROM pdu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "         UNION SELECT date, body AS snippet, thread_id FROM sms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     WHERE thread_id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ORDER BY date DESC LIMIT 1),"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  snippet_cs ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    (SELECT snippet_cs FROM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "        (SELECT date * 1000 AS date, sub_cs AS snippet_cs, thread_id FROM pdu"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "         UNION SELECT date, 0 AS snippet_cs, thread_id FROM sms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "     WHERE thread_id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ORDER BY date DESC LIMIT 1)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  WHERE threads._id = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT thread_id FROM sms WHERE type=5 AND thread_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " LIMIT 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, query:Ljava/lang/String;
    const/4 v4, 0x0

    .line 356
    .local v4, setError:I
    invoke-virtual {p1, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 357
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 359
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 361
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 365
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT error FROM threads WHERE _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, errorQuery:Ljava/lang/String;
    invoke-virtual {p1, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 369
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 370
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 371
    .local v1, curError:I
    if-eq v1, v4, :cond_3

    .line 373
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE threads SET error="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " WHERE _id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    .end local v1           #curError:I
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 361
    .end local v2           #errorQuery:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 378
    .restart local v2       #errorQuery:Ljava/lang/String;
    :catchall_1
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5
.end method

.method private updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1856
    const-string v0, "UPDATE threads SET has_attachment=1 WHERE _id IN   (SELECT DISTINCT pdu.thread_id FROM part    JOIN pdu ON pdu._id=part.mid    WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1860
    return-void
.end method

.method private updateThreadsContactInfoColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v1, "threads"

    .line 1596
    const-string v0, "threads"

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "recipient_ids"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1604
    if-eqz v0, :cond_0

    .line 1606
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1607
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1608
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1609
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getContentValuesByRecipientIds(Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1610
    const-string v3, "threads"

    const-string v4, "recipient_ids=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1615
    :catch_0
    move-exception v1

    .line 1616
    :try_start_1
    const-string v2, "MmsSmsDatabaseHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1618
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1621
    :cond_0
    :goto_1
    return-void

    .line 1618
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateThreadsUnreadColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1863
    const-string v0, " UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)); "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1864
    return-void
.end method

.method private upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1418
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_move_mms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1419
    const-string v0, "CREATE TRIGGER update_threads_error_on_move_mms   BEFORE UPDATE OF msg_box ON pdu   WHEN (OLD.msg_box = 4 AND NEW.msg_box != 4)   AND (OLD._id IN (SELECT DISTINCT msg_id                   FROM pending_msgs                   WHERE err_type >= 10)) BEGIN   UPDATE threads SET error = error - 1  WHERE _id = OLD.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1429
    return-void
.end method

.method private upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1432
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1433
    const-string v0, "DROP TRIGGER IF EXISTS delete_obsolete_threads_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1434
    const-string v0, "DROP TRIGGER IF EXISTS update_threads_error_on_delete_sms"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1435
    return-void
.end method

.method private upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1439
    const-string v0, "ALTER TABLE threads ADD COLUMN has_attachment INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1441
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1444
    const-string v0, "CREATE TRIGGER update_threads_on_insert_part  AFTER INSERT ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1445
    const-string v0, "CREATE TRIGGER update_threads_on_delete_part  AFTER DELETE ON part  WHEN old.ct != \'text/plain\' AND old.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment =    CASE     (SELECT COUNT(*) FROM part JOIN pdu      WHERE pdu.thread_id = threads._id      AND part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id)   WHEN 0 THEN 0    ELSE 1    END;  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1446
    return-void
.end method

.method private upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1449
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1452
    const-string v0, "CREATE TRIGGER update_threads_on_update_part  AFTER UPDATE of mid ON part  WHEN new.ct != \'text/plain\' AND new.ct != \'application/smil\'  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu ON pdu._id=part.mid      WHERE part._id=new._id LIMIT 1);  END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method private upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1457
    const-string v0, "ALTER TABLE sms ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1460
    const-string v0, "ALTER TABLE pdu ADD COLUMN locked INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method private upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v7, "text"

    const-string v6, "_id"

    const-string v5, "_data"

    const-string v8, "MmsSmsDatabaseHelper"

    .line 1473
    const-string v0, "ALTER TABLE part ADD COLUMN text TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1475
    const-string v1, "part"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v6, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v3, "text"

    aput-object v7, v2, v0

    const-string v3, "ct = \'text/plain\' OR ct == \'application/smil\'"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1483
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1485
    if-eqz v0, :cond_1

    .line 1486
    :try_start_0
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 1487
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1488
    const-string v3, "text"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 1494
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1495
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1496
    if-eqz v4, :cond_0

    .line 1498
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v6

    new-array v6, v6, [B

    .line 1500
    invoke-virtual {v5, v6}, Ljava/io/InputStream;->read([B)I

    .line 1501
    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v7, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V

    .line 1502
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 1503
    invoke-interface {v0, v2}, Landroid/database/Cursor;->updateToNull(I)Z

    .line 1504
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 1505
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1506
    :catch_0
    move-exception v4

    .line 1508
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1514
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->commitUpdates()Z

    .line 1515
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1517
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1518
    :catch_1
    move-exception v3

    .line 1519
    const-string v4, "MmsSmsDatabaseHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to clean up old mms file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1514
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->commitUpdates()Z

    .line 1515
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1517
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1518
    :catch_2
    move-exception v2

    .line 1519
    const-string v3, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to clean up old mms file for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1522
    :cond_2
    if-eqz v0, :cond_3

    .line 1523
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1526
    :cond_3
    return-void

    .line 1522
    :cond_4
    if-eqz v0, :cond_5

    .line 1523
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1529
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsAttachmentColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1532
    const-string v0, "CREATE TRIGGER update_threads_on_update_pdu  AFTER UPDATE of thread_id ON pdu  BEGIN   UPDATE threads SET has_attachment=1 WHERE _id IN    (SELECT pdu.thread_id FROM part JOIN pdu      WHERE part.ct != \'text/plain\' AND part.ct != \'application/smil\'      AND part.mid = pdu._id); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method private upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1537
    const-string v0, "ALTER TABLE sms ADD COLUMN error_code INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1538
    return-void
.end method

.method private upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter

    .prologue
    const-string v0, "read=1"

    const-string v0, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    const-string v5, "MmsSmsDatabaseHelper"

    .line 1541
    const-string v0, "ALTER TABLE sms add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1542
    const-string v0, "ALTER TABLE pdu add COLUMN seen INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1547
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1548
    const-string v1, "seen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1549
    const-string v1, "sms"

    const-string v2, "read=1"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1550
    const-string v2, "MmsSmsDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rows in sms table to have READ=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const-string v1, "pdu"

    const-string v2, "read=1"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1553
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MmsSmsDb] upgradeDatabaseToVersion51: updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " rows in pdu table to have READ=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1558
    :goto_0
    return-void

    .line 1555
    :catch_0
    move-exception v0

    .line 1556
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v1, "[MmsSmsDb] upgradeDatabaseToVersion51 caught "

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1464
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1467
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1468
    return-void
.end method

.method private upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1562
    const-string v0, "ALTER TABLE threads ADD COLUMN unread_count INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1566
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1569
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1570
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1572
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsUnreadColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1573
    return-void
.end method

.method private upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1577
    const-string v0, "ALTER TABLE threads ADD COLUMN photo_id TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1580
    const-string v0, "ALTER TABLE threads ADD COLUMN recipient_addresses TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1583
    const-string v0, "ALTER TABLE threads ADD COLUMN recipient_names TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1586
    const-string v0, "ALTER TABLE threads ADD COLUMN is_sp TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1589
    const-string v0, "ALTER TABLE threads ADD COLUMN person_id TEXT "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1592
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsContactInfoColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1593
    return-void
.end method

.method private upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1379
    const-string v0, "ALTER TABLE threads ADD COLUMN server_date INTEGER DEFAULT 0 "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1381
    const-string v0, "ALTER TABLE pdu ADD COLUMN server_date INTEGER DEFAULT 0 "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1383
    const-string v0, "ALTER TABLE sms ADD COLUMN server_date INTEGER DEFAULT 0 "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1386
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1388
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1389
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1391
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createUpdateThreadsDateTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->initHostDateForExistingThreads(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1393
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->updateThreadsUnreadColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1394
    return-void
.end method

.method private upgradeDatabaseToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1628
    const-string v0, "ALTER TABLE threads ADD COLUMN state INTEGER DEFAULT 0 "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    return-void
.end method

.method private upgradeDatabaseToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1633
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1634
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_read_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1635
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1636
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1637
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1638
    const-string v0, "DROP TRIGGER IF EXISTS sms_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1640
    const-string v0, "CREATE TRIGGER pdu_update_thread_read_on_update AFTER  UPDATE OF read  ON pdu   WHEN new.m_type=132    OR new.m_type=130    OR new.m_type=128 BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id;  END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1641
    const-string v0, "CREATE TRIGGER sms_update_thread_read_on_update AFTER  UPDATE OF read  ON sms BEGIN  UPDATE threads SET unread_count=(SELECT COUNT(*) FROM sms WHERE read=0 AND thread_id=threads._id) + (SELECT COUNT(*) FROM pdu WHERE read=0 AND thread_id=threads._id AND (m_type=132 OR m_type=130 OR m_type=128)) WHERE threads._id = new.thread_id;   UPDATE threads SET read =     CASE unread_count      WHEN 0 THEN 1      ELSE 0    END  WHERE threads._id = new.thread_id; END;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1643
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createUpdateThreadsDateTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1644
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createUpdateThreadUnreadCountOnPduDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1645
    return-void
.end method

.method private upgradeDatabaseToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1648
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_insert"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1649
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_date_subject_on_update"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1650
    const-string v0, "DROP TRIGGER IF EXISTS pdu_update_thread_on_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1652
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createUpdateThreadsDateOnPduTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1653
    return-void
.end method

.method private upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter

    .prologue
    .line 1658
    const-string v0, "ALTER TABLE pdu ADD COLUMN timed INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1659
    const-string v0, "ALTER TABLE sms ADD COLUMN timed INTEGER DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1660
    return-void
.end method


# virtual methods
.method public getContentValuesByRecipientIds(Ljava/lang/String;Landroid/content/ContentValues;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1827
    invoke-direct {p0, p1, p3}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getAddressesByRecipientId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1828
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1829
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1830
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1831
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1834
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getContactInfo(Ljava/lang/String;)Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;

    move-result-object v0

    .line 1835
    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$000(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1836
    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPhotoId:I
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$100(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    invoke-virtual {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->isSPContact()Z

    move-result v7

    if-eqz v7, :cond_0

    const-wide/16 v7, 0x1

    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    #getter for: Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->mPersonId:J
    invoke-static {v0}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;->access$300(Lcom/android/providers/telephony/MmsSmsDatabaseHelper$ContactInfo;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1837
    :cond_0
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 1841
    :cond_1
    invoke-static {v1}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeperatedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1842
    invoke-static {v2}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeperatedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 1843
    invoke-static {v4}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeperatedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 1844
    invoke-static {v3}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeperatedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    .line 1845
    invoke-static {v5}, Lcom/android/providers/telephony/MmsSmsProvider;->getSpaceSeperatedString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    .line 1846
    const-string v5, "recipient_addresses"

    invoke-virtual {p2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    const-string v0, "recipient_names"

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const-string v0, "photo_id"

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const-string v0, "is_sp"

    invoke-virtual {p2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    const-string v0, "person_id"

    invoke-virtual {p2, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 486
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createSmsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 487
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 488
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createCommonTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 489
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createMmsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 490
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 491
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createIndices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 492
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "currentVersion"

    .prologue
    const-string v3, "MmsSmsDatabaseHelper"

    .line 991
    const-string v1, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    packed-switch p2, :pswitch_data_0

    .line 1304
    :goto_0
    const-string v1, "MmsSmsDatabaseHelper"

    const-string v1, "Destroying all old data."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->dropAll(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1306
    invoke-virtual {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1307
    :cond_0
    :goto_1
    return-void

    .line 996
    :pswitch_0
    const/16 v1, 0x28

    if-le p3, v1, :cond_0

    .line 1000
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1002
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion41(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1003
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1012
    :pswitch_1
    const/16 v1, 0x29

    if-le p3, v1, :cond_0

    .line 1016
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1018
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion42(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1019
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1028
    :pswitch_2
    const/16 v1, 0x2a

    if-le p3, v1, :cond_0

    .line 1032
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1034
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion43(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1035
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1040
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1044
    :pswitch_3
    const/16 v1, 0x2b

    if-le p3, v1, :cond_0

    .line 1048
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1050
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1051
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1056
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1060
    :pswitch_4
    const/16 v1, 0x2c

    if-le p3, v1, :cond_0

    .line 1064
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1066
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion45(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1067
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1072
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1076
    :pswitch_5
    const/16 v1, 0x2d

    if-le p3, v1, :cond_0

    .line 1079
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1081
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion46(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1082
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1087
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1091
    :pswitch_6
    const/16 v1, 0x2e

    if-le p3, v1, :cond_0

    .line 1095
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1097
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion47(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1098
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1103
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1107
    :pswitch_7
    const/16 v1, 0x2f

    if-le p3, v1, :cond_0

    .line 1111
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1113
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion48(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1123
    :pswitch_8
    const/16 v1, 0x30

    if-le p3, v1, :cond_0

    .line 1127
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1129
    :try_start_8
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createWordsTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1130
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1139
    :pswitch_9
    const/16 v1, 0x31

    if-le p3, v1, :cond_0

    .line 1142
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1144
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->createThreadIdIndex(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1145
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1150
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1154
    :pswitch_a
    const/16 v1, 0x32

    if-le p3, v1, :cond_0

    .line 1158
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1160
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion51(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1161
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1166
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1170
    :pswitch_b
    const/16 v1, 0x33

    if-le p3, v1, :cond_0

    .line 1176
    :pswitch_c
    const/16 v1, 0x34

    if-le p3, v1, :cond_0

    .line 1180
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1182
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion53(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1183
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1188
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1192
    :pswitch_d
    const/16 v1, 0x35

    if-le p3, v1, :cond_0

    .line 1196
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1198
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion54(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1199
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1204
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1208
    :pswitch_e
    const/16 v1, 0x36

    if-le p3, v1, :cond_0

    .line 1212
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1214
    :try_start_d
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion55(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1215
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1220
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1224
    :pswitch_f
    const/16 v1, 0x37

    if-le p3, v1, :cond_0

    .line 1228
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1230
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion56(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1231
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1236
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1240
    :pswitch_10
    const/16 v1, 0x38

    if-le p3, v1, :cond_0

    .line 1244
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1246
    :try_start_f
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion57(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1247
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1252
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1256
    :pswitch_11
    const/16 v1, 0x39

    if-le p3, v1, :cond_0

    .line 1260
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1262
    :try_start_10
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion58(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1263
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1268
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1272
    :pswitch_12
    const/16 v1, 0x3a

    if-le p3, v1, :cond_0

    .line 1276
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1278
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion59(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1279
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_11

    .line 1284
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1288
    :pswitch_13
    const/16 v1, 0x3b

    if-le p3, v1, :cond_0

    .line 1292
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1294
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->upgradeDatabaseToVersion60(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1295
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_12

    .line 1300
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_1

    .line 1004
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1005
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_13
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1008
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1020
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1021
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_14
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 1024
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1036
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 1037
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_15
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 1040
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_2
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1052
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 1053
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_16
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 1056
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_3
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1068
    :catch_4
    move-exception v1

    move-object v0, v1

    .line 1069
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_17
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 1072
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_4
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1083
    :catch_5
    move-exception v1

    move-object v0, v1

    .line 1084
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_18
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 1087
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_5
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1099
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 1100
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_19
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 1103
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_6
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1115
    :catch_7
    move-exception v1

    move-object v0, v1

    .line 1116
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1a
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 1119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_7
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1131
    :catch_8
    move-exception v1

    move-object v0, v1

    .line 1132
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1b
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    .line 1135
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_8
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1146
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 1147
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1c
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 1150
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_9
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1162
    :catch_a
    move-exception v1

    move-object v0, v1

    .line 1163
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1d
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 1166
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_a
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1184
    :catch_b
    move-exception v1

    move-object v0, v1

    .line 1185
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1e
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_b

    .line 1188
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_b
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1200
    :catch_c
    move-exception v1

    move-object v0, v1

    .line 1201
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_1f
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 1204
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_c
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1216
    :catch_d
    move-exception v1

    move-object v0, v1

    .line 1217
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_20
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Jlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    .line 1220
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_d
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1232
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 1233
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_21
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Jlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    .line 1236
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_e
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1248
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 1249
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_22
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Jlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_f

    .line 1252
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_f
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1264
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 1265
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_23
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Jlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_10

    .line 1268
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_10
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1280
    :catch_11
    move-exception v1

    move-object v0, v1

    .line 1281
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_24
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Jlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_11

    .line 1284
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_11
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 1296
    :catch_12
    move-exception v1

    move-object v0, v1

    .line 1297
    .restart local v0       #ex:Ljava/lang/Throwable;
    :try_start_25
    const-string v1, "MmsSmsDatabaseHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    .line 1300
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_12
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 994
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public updateThreadContactsInfoByAddress(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1744
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/MmsSmsDatabaseHelper;->getContactInfoByAddress(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1745
    if-eqz v0, :cond_0

    .line 1746
    const-string v1, "threads"

    const-string v2, "recipient_addresses=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1752
    :goto_0
    return v0

    .line 1751
    :cond_0
    const-string v0, "MmsSmsDatabaseHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cann\'t find the contact information by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 1752
    goto :goto_0
.end method
