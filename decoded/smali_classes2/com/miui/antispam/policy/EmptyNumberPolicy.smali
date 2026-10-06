.class public Lcom/miui/antispam/policy/EmptyNumberPolicy;
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

    const-string v0, "EmptyNumberPolicy"

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;
    .locals 4

    iget-object v0, p1, Lh2/c;->a:Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mContext:Landroid/content/Context;

    iget v1, p1, Lh2/c;->e:I

    const-string v2, "empty_call_mode"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Le2/b;->a(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v3, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/policy/a;->mPc:Lcom/miui/antispam/policy/a$b;

    sget-object v1, Lh2/e;->v:Lh2/e;

    invoke-interface {v0, v1}, Lcom/miui/antispam/policy/a$b;->a(Lh2/e;)Lcom/miui/antispam/policy/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/policy/a;->handleData(Lh2/c;)Lcom/miui/antispam/policy/a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcom/miui/antispam/policy/a$a;->a:Z

    if-eqz p1, :cond_1

    new-instance p1, Lcom/miui/antispam/policy/a$a;

    const/16 v0, 0xf

    invoke-direct {p1, p0, v3, v0}, Lcom/miui/antispam/policy/a$a;-><init>(Lcom/miui/antispam/policy/a;ZI)V

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
