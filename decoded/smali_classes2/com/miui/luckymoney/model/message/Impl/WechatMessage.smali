.class public Lcom/miui/luckymoney/model/message/Impl/WechatMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/luckymoney/model/message/AppMessage;
.implements Ljava/io/Serializable;


# static fields
.field private static final AA_MESSAGE_PATTERN:Ljava/lang/String; = "^(.*?:)?\\s*\\[AA.*?\\]"

.field private static final GROUP_CHAT_KEYWORD:Ljava/lang/String; = "@chatroom"

.field private static final KEY_MESSAGE_CONVERSATION_ID:Ljava/lang/String; = "Main_User"

.field private static final KEY_MESSAGE_TYPE:Ljava/lang/String; = "MainUI_User_Last_Msg_Type"

.field private static final LUCKY_MONEY_KEYWORD:Ljava/lang/String; = "[\u5fae\u4fe1\u7ea2\u5305]"

.field private static final LUCK_MONEY_SHORT_KEYWORD:Ljava/lang/String; = "\u7ea2\u5305"

.field public static final PATTERN_MESSAGE:Ljava/lang/String; = "^(\\[(.*?)\u6761\\])?(.*?):(.*)"

.field private static final PAYMENT_MESSAGE_PATTERN:Ljava/lang/String; = "^\\s*\\[\u7fa4\u6536\u6b3e\\]"

.field private static final TYPE_LUCKY_MONEY:I = 0x1a000031

.field private static final TYPE_UNKNOWN:I = -0x1

.field private static final serialVersionUID:J = -0x7cbd8a3e346e79aeL


# instance fields
.field public conversation:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field private final mAAMessagePattern:Ljava/util/regex/Pattern;

.field private final mNotification:Lcom/miui/luckymoney/model/Notification;

.field private final mPatternMessage:Ljava/util/regex/Pattern;

.field private final mPaymentMessagePattern:Ljava/util/regex/Pattern;

.field public message:Ljava/lang/String;

.field public notificationId:I

.field public notificationTag:Ljava/lang/String;

.field public pendingIntent:Landroid/app/PendingIntent;

.field public receivedTime:J

.field public type:I

.field public wechatId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/luckymoney/model/Notification;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->from:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->type:I

    const-string v1, "^(\\[(.*?)\u6761\\])?(.*?):(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->mPatternMessage:Ljava/util/regex/Pattern;

    const-string v2, "^(.*?:)?\\s*\\[AA.*?\\]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->mAAMessagePattern:Ljava/util/regex/Pattern;

    const-string v2, "^\\s*\\[\u7fa4\u6536\u6b3e\\]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->mPaymentMessagePattern:Ljava/util/regex/Pattern;

    iput-object p2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    iget v2, p2, Lcom/miui/luckymoney/model/Notification;->id:I

    iput v2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->notificationId:I

    iget-object v2, p2, Lcom/miui/luckymoney/model/Notification;->tag:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->notificationTag:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->conversation:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.tencent.mm"

    invoke-static {p1, v2}, Lcom/miui/luckymoney/utils/PackageUtil;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->conversation:Ljava/lang/String;

    :cond_0
    iget-object p1, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-wide v2, p1, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->receivedTime:J

    invoke-virtual {p2}, Lcom/miui/luckymoney/model/Notification;->getNotificationContent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->from:Ljava/lang/String;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->from:Ljava/lang/String;

    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    if-nez p1, :cond_3

    iput-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    :cond_3
    iget-object p1, p2, Lcom/miui/luckymoney/model/Notification;->notification:Landroid/app/Notification;

    iget-object p1, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->pendingIntent:Landroid/app/PendingIntent;

    invoke-static {p1}, Lbh/d$a;->e(Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getIntent"

    invoke-virtual {p1, v2, p2, v1}, Lbh/d$a;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lbh/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lbh/d$a;->k()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "MainUI_User_Last_Msg_Type"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->type:I

    const-string p2, "Main_User"

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    :cond_4
    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->conversation:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->conversation:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Lcom/miui/luckymoney/model/Notification;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->mNotification:Lcom/miui/luckymoney/model/Notification;

    return-object v0
.end method

.method public getWarningPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.tencent.mm"

    return-object v0
.end method

.method public isGroupMessage()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->conversation:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    const-string v1, "@chatroom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isHongbao()Z
    .locals 3

    iget v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->type:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    const-string v1, "[\u5fae\u4fe1\u7ea2\u5305]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const v1, 0x1a000031

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->mPaymentMessagePattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    const-string v1, "\u7ea2\u5305"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->mAAMessagePattern:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->conversation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nfrom:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->from:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nwhen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->receivedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nisLucky:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->isHongbao()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nisGroup:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->isGroupMessage()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nwechatId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/luckymoney/model/message/Impl/WechatMessage;->wechatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
