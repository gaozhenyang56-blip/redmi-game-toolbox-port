.class public Lcom/miui/antispam/policy/MmsPolicy;
.super Lcom/miui/antispam/policy/a;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsPolicy"


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

    const-string v0, "MmsPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 6

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v1, p1, Lh2/c;->e:I

    const-string v2, "mms_mode"

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    const-string v1, "Mms is blocked."

    const/4 v2, 0x1

    const-string v4, "MmsPolicy"

    if-nez v0, :cond_0

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/4 v0, 0x7

    invoke-direct {p1, p0, v2, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_0
    const/4 v5, 0x0

    if-ne v0, v3, :cond_1

    const-string p1, "Mms is permitted."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v2, v5}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v0, v3}, Lm2/f;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Mms addresser is a contact."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v2, v5}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v0, p1, v5}, Lmiui/yellowpage/YellowPageUtils;->getPhoneInfo(Landroid/content/Context;Ljava/lang/String;Z)Lmiui/yellowpage/YellowPagePhone;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPagePhone;->isYellowPage()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Mms addresser is a known service provider."

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v2, v5}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_3
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v2, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1
.end method
