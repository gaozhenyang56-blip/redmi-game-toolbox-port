.class public Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.warningcenter.DisasterContentProvider"

.field private static final DISASTER_URI:Landroid/net/Uri;


# instance fields
.field private mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.warningcenter.DisasterContentProvider/disaster"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->DISASTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    return-void
.end method

.method private insertData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventTypeCN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getExpires()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReferencesInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReceivePosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCounty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getLocation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->DISASTER_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private queryData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->DISASTER_URI:Landroid/net/Uri;

    const/4 p1, 0x1

    new-array v2, p1, [Ljava/lang/String;

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string v1, "WcDisasterTask"

    const-string v2, "ManageDataTask queryData error"

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw p2

    :cond_2
    :goto_2
    return-object v0
.end method

.method private updateData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventTypeCN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getExpires()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getHeadline()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReferencesInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReceivePosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getInstruction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCounty()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getLocation()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->DISASTER_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " = ?"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->queryData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->updateData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReferencesInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReferencesInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-virtual {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReferencesInfo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->queryData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReferencesInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->mAlertModel:Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {p0, p1, v0}, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->insertData(Landroid/content/Context;Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "WcDisasterTask"

    const-string v1, "ManageDataTask insert data error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/ManageDataTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
