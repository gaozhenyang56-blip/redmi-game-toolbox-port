.class public Lcom/miui/antispam/policy/ContactsPolicy;
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

    const-string v0, "ContactsPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lh2/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lm2/f;->x(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lh2/c;->f:I

    const/4 v1, 0x2

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v1, p1, Lh2/c;->e:I

    const-string v4, "contact_call_mode"

    invoke-static {v0, v4, v1, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v3, v2}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_0
    iget v0, p1, Lh2/c;->f:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget p1, p1, Lh2/c;->e:I

    const-string v1, "contact_sms_mode"

    invoke-static {v0, v1, p1, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    invoke-direct {p1, p0, v3, v2}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v3, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
