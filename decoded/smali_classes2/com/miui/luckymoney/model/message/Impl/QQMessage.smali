.class public Lcom/miui/luckymoney/model/message/Impl/QQMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/luckymoney/model/message/AppMessage;
.implements Ljava/io/Serializable;


# static fields
.field public static final KEY_CONVERSATION_ID:Ljava/lang/String; = "uin"

.field public static final KEY_CONVERSATION_ID_NEW:Ljava/lang/String; = "key_peerUin"

.field public static final KEY_CONVERSATION_NAME:Ljava/lang/String; = "uinname"

.field public static final KEY_CONVERSATION_NAME_NEW:Ljava/lang/String; = "key_chat_name"

.field public static final KEY_CONVERSATION_TYPE:Ljava/lang/String; = "uintype"

.field public static final KEY_CONVERSATION_TYPE_NEW:Ljava/lang/String; = "key_chat_type"

.field public static final LUCKY_MONEY_KEYWORD:Ljava/lang/String; = "[QQ\u7ea2\u5305]"

.field public static final LUCKY_MONEY_KEYWORD_NEW:Ljava/lang/String; = "[\u7ea2\u5305]"

.field public static final PATTERN_MESSAGE:Ljava/lang/String; = "^(.*?):\\s*(.*)"

.field public static final TYPE_DISCUSS_GROUP:I = 0xbb8

.field public static final TYPE_PERSISTENT_GROUP:I = 0x1

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static isNewVersionOfQQ:Z = false

.field private static final serialVersionUID:J = -0x7cbd8a3e346e79aeL


# instance fields
.field public conversationId:Ljava/lang/String;

.field public conversationName:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field private final mNotification:Lcom/miui/luckymoney/model/Notification;

.field private final mPatternMessage:Ljava/util/regex/Pattern;

.field public message:Ljava/lang/String;

.field public notificationId:I

.field public notificationTag:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;

.field public receivedTime:J

.field public treatedAsGroupMessage:Z

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->treatedAsGroupMessage:Z

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    const-string v3, "^(.*?):\\s*(.*)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->mPatternMessage:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    iget v4, p2, Lcom/miui/luckymoney/model/Notification;->id:I

    iput v4, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->notificationId:I

    iget-object v4, p2, Lcom/miui/luckymoney/model/Notification;->tag:Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->notificationTag:Ljava/lang/String;

    iget-object v4, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-wide v4, v4, Landroid/app/Notification;->when:J

    iput-wide v4, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->receivedTime:J

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    if-nez v4, :cond_0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    :cond_0
    iget-object v4, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    if-nez v4, :cond_1

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    if-nez v3, :cond_2

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    :cond_2
    iget-object v3, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v3, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {v3}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object v3

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "getIntent"

    invoke-virtual {v3, v6, v4, v2}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object v2

    invoke-virtual {v2}, Lbh/d$a;->k()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "key_chat_type"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    if-ne v3, v1, :cond_3

    const-string v3, "uintype"

    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const-string v1, "uin"

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    const-string v1, "uinname"

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    sput-boolean v5, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isNewVersionOfQQ:Z

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const-string v1, "key_peerUin"

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-nez v1, :cond_4

    move-object v1, v0

    goto :goto_1

    :cond_4
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    const-string v1, "key_chat_name"

    goto :goto_0

    :goto_2
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationTitle()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    :cond_7
    iget-object p2, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "com.tencent.mobileqq"

    invoke-static {p1, p2}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    :cond_8
    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "tencentqq_"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Lcom/miui/luckymoney/model/Notification;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    return-object v0
.end method

.method public getWarningPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.tencent.mobileqq"

    return-object v0
.end method

.method public isGroupMessage()Z
    .locals 3

    iget v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->type:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0xbb8

    if-ne v2, v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->treatedAsGroupMessage:Z

    return v0
.end method

.method public isHongbao()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    const-string v1, "[QQ\u7ea2\u5305]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isNewVersionOfQQ:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    const-string v1, "[\u7ea2\u5305]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nfrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nwhen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->receivedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nisLucky:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isHongbao()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nisGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->isGroupMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nconversationId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/QQMessage;->conversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
