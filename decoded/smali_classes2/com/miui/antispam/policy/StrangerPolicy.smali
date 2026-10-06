.class public Lcom/miui/antispam/policy/StrangerPolicy;
.super Lcom/miui/antispam/policy/a;
.source "SourceFile"


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

    const-string v0, "StrangerPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 4

    iget v0, p1, Lh2/c;->f:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget p1, p1, Lh2/c;->e:I

    const-string v3, "stranger_call_mode"

    invoke-static {v0, v3, p1, v2}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v2, v1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_0
    if-ne v0, v2, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v3, "stranger_sms_mode"

    if-nez v0, :cond_1

    iget-object v0, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget p1, p1, Lh2/c;->e:I

    invoke-static {v0, v3, p1, v2}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v2, v1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget p1, p1, Lh2/c;->e:I

    invoke-static {v0, v3, p1, v2}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v2, v1}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
