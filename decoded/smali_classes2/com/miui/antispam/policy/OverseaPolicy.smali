.class public Lcom/miui/antispam/policy/OverseaPolicy;
.super Lcom/miui/antispam/policy/a;
.source "SourceFile"


# static fields
.field private static final KEY_CALL_FIRST_OVERSEA:Ljava/lang/String; = "key_call_first_oversea"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/a;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/a$b;Lh2/b;Lh2/e;)V

    return-void
.end method


# virtual methods
.method public dbQuery(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "OverseaPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 9

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v1, p1, Lh2/c;->e:I

    const-string v2, "oversea_call_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "886"

    const-string v2, "853"

    const-string v4, "852"

    const-string v5, "86"

    if-nez v0, :cond_0

    iget-object p1, p1, Lh2/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/16 v0, 0x11

    invoke-direct {p1, p0, v3, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_0
    const-string v0, "key_call_first_oversea"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lr4/a;->e(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object p1, p1, Lh2/c;->a:Ljava/lang/String;

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "miui.intent.action.CALL_FIREWALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "is_from_intercept_notification"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lm2/f;->a:Ljava/lang/String;

    const/4 v7, 0x3

    const-string v8, "com.miui.antispam_new"

    invoke-static {p1, v8, v5, v7, v3}, Lx4/e1;->c(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v5, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lx4/e1;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    const v8, 0x7f120927

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    const v8, 0x7f12092a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    const v8, 0x7f12092b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v7, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f080365

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x7f08086c

    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "single"

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    invoke-static {v1, v3}, Lrg/a;->c(Landroid/app/Notification;Z)V

    const/16 v2, 0x31c

    invoke-virtual {p1, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-static {v0, v3}, Lr4/a;->n(Ljava/lang/String;Z)V

    const-string p1, "oversea_function_guide"

    const-string v0, "oversea_intercept"

    const-string v1, "show"

    invoke-static {p1, v0, v1}, Lc2/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
