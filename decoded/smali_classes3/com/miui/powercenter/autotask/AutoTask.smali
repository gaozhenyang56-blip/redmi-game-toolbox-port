.class public Lcom/miui/powercenter/autotask/AutoTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/autotask/AutoTask$c;,
        Lcom/miui/powercenter/autotask/AutoTask$b;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.miui.powercenter.autotask"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/powercenter/autotask/AutoTask;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATABASE_NAME:Ljava/lang/String; = "power_auto_task.db"

.field public static GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x3

.field public static final KEEP_STATE:I = 0x2

.field public static final QUERY_COLUMNS:[Ljava/lang/String;

.field public static final RESTORE_WHEN_CHARGED:I = 0x1

.field public static final SWITCH_OFF:I = 0x0

.field public static final SWITCH_ON:I = 0x1

.field public static final TABLE_NAME:Ljava/lang/String; = "autotasks"

.field private static final TAG:Ljava/lang/String; = "autotask"


# instance fields
.field private mConditions:Lorg/json/JSONObject;

.field private mEnabled:Z

.field private mId:J

.field private mName:Ljava/lang/String;

.field private mOperations:Lorg/json/JSONObject;

.field private mRepeatType:I

.field private mRestoreLevel:I

.field private mRestoreOperations:Lorg/json/JSONObject;

.field private mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "content://com.miui.powercenter.autotask/autotasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/autotask/AutoTask;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    sput v0, Lcom/miui/powercenter/autotask/AutoTask;->GPS_OFF:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput v0, Lcom/miui/powercenter/autotask/AutoTask;->GPS_OFF:I

    new-instance v0, Lcom/miui/powercenter/autotask/AutoTask$a;

    invoke-direct {v0}, Lcom/miui/powercenter/autotask/AutoTask$a;-><init>()V

    sput-object v0, Lcom/miui/powercenter/autotask/AutoTask;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v1, "_id"

    const-string v2, "enabled"

    const-string v3, "name"

    const-string v4, "condition"

    const-string v5, "operation"

    const-string v6, "repeat_type"

    const-string v7, "task_started"

    const-string v8, "restore_operation"

    const-string v9, "restore_level"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/autotask/AutoTask;->QUERY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v1, 0x7f

    iput v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v6, ""

    const-string v7, "{}"

    const-string v8, "{}"

    const/16 v9, 0x7f

    const/4 v10, 0x0

    const-string v11, "{}"

    const/4 v12, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/miui/powercenter/autotask/AutoTask;->init(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v1, 0x7f

    iput v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v1, "enabled"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v6, "condition"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "operation"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "repeat_type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v8, "task_started"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v0

    :goto_1
    const-string v0, "restore_operation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "restore_level"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-nez v1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "{}"

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_3

    :cond_3
    move-object v1, v6

    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object v8, v7

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object v11, v0

    :goto_5
    move-object v2, p0

    move-object v6, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v12}, Lcom/miui/powercenter/autotask/AutoTask;->init(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v1, 0x7f

    iput v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "autotask"

    const-string v1, "Parcel"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v1, 0x7f

    iput v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v5

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getConditionString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v9

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getStarted()Z

    move-result v10

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreOperationString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreLevel()I

    move-result v12

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/miui/powercenter/autotask/AutoTask;->init(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    const/16 v1, 0x7f

    iput v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    iput-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    iput v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "condition"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "operation"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "repeat_type"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v4, "task_started"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    move v10, v0

    const-string v0, "restore_operation"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "restore_level"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    if-nez v1, :cond_1

    const-string p1, ""

    move-object v6, p1

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v1, "{}"

    if-eqz p1, :cond_2

    move-object v7, v1

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v8, v3

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    move-object v11, v1

    goto :goto_3

    :cond_4
    move-object v11, v0

    :goto_3
    const-wide/16 v3, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/miui/powercenter/autotask/AutoTask;->init(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V

    return-void
.end method

.method private compareJsonObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    return v0

    :cond_3
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v5, v4

    :goto_0
    const-string v6, "autotask"

    const-string v7, "compareJsonObject"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    return v0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    return v0
.end method

.method public static getHourMinute(I)Lcom/miui/powercenter/autotask/AutoTask$b;
    .locals 2

    new-instance v0, Lcom/miui/powercenter/autotask/AutoTask$b;

    invoke-direct {v0}, Lcom/miui/powercenter/autotask/AutoTask$b;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    iput v1, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->a:I

    rem-int/lit8 p0, p0, 0x3c

    iput p0, v0, Lcom/miui/powercenter/autotask/AutoTask$b;->b:I

    return-object v0
.end method

.method public static getInitAutoTaskList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/autotask/AutoTask;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>()V

    new-instance v2, Lcom/miui/powercenter/autotask/AutoTask$c;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x1a4

    invoke-direct {v2, v3, v5}, Lcom/miui/powercenter/autotask/AutoTask$c;-><init>(II)V

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask$c;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "hour_minute_duration"

    invoke-virtual {v1, v3, v2}, Lcom/miui/powercenter/autotask/AutoTask;->setCondition(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "airplane_mode"

    invoke-virtual {v1, v3, v2}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v1}, Lcom/miui/powercenter/autotask/AutoTask;-><init>()V

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "battery_level_down"

    invoke-virtual {v1, v5, v3}, Lcom/miui/powercenter/autotask/AutoTask;->setCondition(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "mute"

    invoke-virtual {v1, v3, v2}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "brightness"

    invoke-virtual {v1, v2, v4}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    invoke-static {v2}, Lme/w;->Y(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/miui/powercenter/autotask/AutoTask;->GPS_OFF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v1, v3, v2}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v2, "synchronization"

    invoke-virtual {v1, v2, v4}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2, v4}, Lcom/miui/powercenter/autotask/AutoTask;->setOperation(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getKeys(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private init(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;I)V
    .locals 1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p5, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    iput-wide p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iput-boolean p3, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    iput-object p4, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    iput p7, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    iput-boolean p8, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    iput p10, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "autotask"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public conditionsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->compareJsonObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/miui/powercenter/autotask/AutoTask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/miui/powercenter/autotask/AutoTask;

    iget-wide v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    iget-wide v4, p1, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getCondition(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catch_0
    :catchall_0
    return-object v0
.end method

.method public getConditionNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getKeys(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConditionString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperation(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catch_0
    :catchall_0
    return-object v0
.end method

.method public getOperationNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getKeys(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOperationString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRepeatType()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    return v0
.end method

.method public getRestoreLevel()I
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    return v0
.end method

.method public getRestoreOperation(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catch_0
    :catchall_0
    return-object v0
.end method

.method public getRestoreOperationNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->getKeys(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRestoreOperationString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    return v0
.end method

.method public hasCondition(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasOperation(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isConditionEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getConditionNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isOperationEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isPeriodTask()Z
    .locals 1

    const-string v0, "hour_minute_duration"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "battery_level_down"

    invoke-virtual {p0, v0}, Lcom/miui/powercenter/autotask/AutoTask;->hasCondition(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreLevel()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public operationsEquals(Lcom/miui/powercenter/autotask/AutoTask;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    iget-object p1, p1, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-direct {p0, v0, p1}, Lcom/miui/powercenter/autotask/AutoTask;->compareJsonObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result p1

    return p1
.end method

.method public removeAllConditions()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getConditionNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeCondition(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllOperations()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/miui/powercenter/autotask/AutoTask;->removeOperation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllRestoreOperation()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreOperationNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCondition(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public removeOperation(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public setCondition(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "autotask"

    const-string v0, "setCondition"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    return-void
.end method

.method public setOperation(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "autotask"

    const-string v0, "setOperation"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setRepeatType(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    return-void
.end method

.method public setRestoreLevel(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    return-void
.end method

.method public setRestoreOperation(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "autotask"

    const-string v0, "setRestoreOperation"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_id"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "enabled"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "condition"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getConditionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "operation"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getOperationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "repeat_type"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRepeatType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "task_started"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getStarted()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "restore_operation"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreOperationString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "restore_level"

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTask;->getRestoreLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/powercenter/autotask/AutoTask;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mEnabled:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mConditions:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mOperations:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRepeatType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mStarted:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreOperations:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/miui/powercenter/autotask/AutoTask;->mRestoreLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
