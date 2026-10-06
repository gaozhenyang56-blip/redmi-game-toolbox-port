.class public Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.miui.warningcenter.DisasterContentProvider"

.field private static final DISASTER_URI:Landroid/net/Uri;

.field private static final SQL_AND:Ljava/lang/String; = "\' AND "


# instance fields
.field private callBack:Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;

.field private mArea:Ljava/lang/String;

.field private mLevel:Ljava/lang/String;

.field private mQueryType:I

.field private mType:Ljava/lang/String;

.field private final mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private nearestSearch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.miui.warningcenter.DisasterContentProvider/disaster"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->DISASTER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mQueryType:I

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mArea:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mType:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mLevel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->nearestSearch:Z

    return-void
.end method

.method private queryList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receivePosition LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\' OR eventTypeCN LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\' OR sender LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%\'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->DISASTER_URI:Landroid/net/Uri;

    const/16 p1, 0x14

    new-array v3, p1, [Ljava/lang/String;

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->ID:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    const/4 v0, 0x2

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    const/4 v0, 0x3

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    const/4 v0, 0x4

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    const/4 v0, 0x5

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    const/4 v0, 0x6

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    const/4 v0, 0x7

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    const/16 v0, 0x8

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    const/16 v0, 0x9

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    const/16 v0, 0xa

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    const/16 v0, 0xb

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    const/16 v0, 0xc

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    const/16 v0, 0xd

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    const/16 v0, 0xe

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    const/16 v0, 0xf

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    const/16 v0, 0x10

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    const/16 v0, 0x11

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    const/16 v0, 0x12

    aput-object p1, v3, v0

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    const/16 v0, 0x13

    aput-object p1, v3, v0

    const/4 v5, 0x0

    const-string v6, "effective desc"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {v0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;-><init>()V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setDescription(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEffective(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventType(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventTypeCN(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setExpires(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setHeadline(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setIdentifier(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setMsgType(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setNote(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReferencesInfo(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSender(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSeverity(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReceivePosition(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setWarningType(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setInstruction(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setProvince(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCity(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCounty(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setLocation(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method private queryList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "\' AND "

    const-string v2, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "receivePosition = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "eventTypeCN = \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "severity like \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string p2, " AND "

    invoke-virtual {v2, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x5

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {v2, p4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v6, v2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->DISASTER_URI:Landroid/net/Uri;

    const/16 p1, 0x14

    new-array v5, p1, [Ljava/lang/String;

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->ID:Ljava/lang/String;

    aput-object p1, v5, p4

    const/4 p1, 0x1

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    aput-object p4, v5, p1

    const/4 p1, 0x2

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    aput-object p4, v5, p1

    const/4 p1, 0x3

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    aput-object p4, v5, p1

    const/4 p1, 0x4

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    aput-object p4, v5, p1

    sget-object p1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    aput-object p1, v5, p3

    const/4 p1, 0x6

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    aput-object p3, v5, p1

    const/4 p1, 0x7

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0x8

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0x9

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0xa

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0xb

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0xc

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0xd

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0xe

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0xf

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0x10

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0x11

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0x12

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    aput-object p3, v5, p1

    const/16 p1, 0x13

    sget-object p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    aput-object p3, v5, p1

    const/4 v7, 0x0

    const-string v8, "effective desc"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {p3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;-><init>()V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setDescription(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEffective(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventType(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventTypeCN(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setExpires(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setHeadline(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setIdentifier(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setMsgType(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setNote(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReferencesInfo(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSender(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSeverity(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReceivePosition(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setWarningType(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setInstruction(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setProvince(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCity(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCounty(Ljava/lang/String;)V

    sget-object p4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setLocation(Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2
.end method

.method private queryNearest(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->nearestSearch:Z

    if-eqz v0, :cond_0

    const-string v0, "effective desc limit 0,1"

    goto :goto_0

    :cond_0
    const-string v0, "_id desc"

    :goto_0
    move-object v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->DISASTER_URI:Landroid/net/Uri;

    const/16 p1, 0x14

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->ID:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 p1, 0x1

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 p1, 0x2

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 p1, 0x3

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 p1, 0x4

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 p1, 0x5

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 p1, 0x6

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 p1, 0x7

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0x8

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0x9

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0xa

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0xb

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0xc

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0xd

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0xe

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0xf

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0x10

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0x11

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0x12

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    aput-object v4, v3, p1

    const/16 p1, 0x13

    sget-object v4, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    aput-object v4, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;

    invoke-direct {v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;-><init>()V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->description:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setDescription(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->effective:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEffective(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventType:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventType(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->eventTypeCN:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setEventTypeCN(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->expires:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setExpires(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->headline:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setHeadline(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->identifier:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setIdentifier(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->msgType:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setMsgType(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->note:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setNote(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->referencesInfo:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReferencesInfo(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->sender:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSender(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->severity:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setSeverity(Ljava/lang/String;)V

    invoke-interface {p4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->receivePosition:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setReceivePosition(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->warningType:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setWarningType(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->instruction:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setInstruction(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->province:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setProvince(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->city:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCity(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->county:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setCounty(Ljava/lang/String;)V

    sget-object v3, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel$Columns;->location:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->setLocation(Ljava/lang/String;)V

    invoke-interface {p3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;
    .locals 5

    iget-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;

    invoke-direct {v0}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    iget v4, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mQueryType:I

    if-lez v4, :cond_2

    const/4 v1, 0x1

    if-ne v4, v1, :cond_1

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mArea:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mType:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mLevel:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->queryList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->setSearchResults(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    if-ne v4, v1, :cond_3

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->mArea:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->queryList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->queryNearest(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->setSearchResults(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->setmAreaList(Ljava/util/Set;)V

    invoke-virtual {v0, v3}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->setmLevelList(Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;->setmTypeList(Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v1, "WcDisasterTask"

    const-string v2, "QueryDataTask insert data error"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->doInBackground([Ljava/lang/String;)Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;->onSuccess(Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;

    invoke-virtual {p0, p1}, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->onPostExecute(Lcom/miui/warningcenter/disasterwarning/model/AlertSearchResult;)V

    return-void
.end method

.method public setCallBack(Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask;->callBack:Lcom/miui/warningcenter/disasterwarning/db/QueryDataTask$CallBack;

    return-void
.end method
