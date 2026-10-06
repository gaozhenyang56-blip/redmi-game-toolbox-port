.class Lmiuix/springback/trigger/b$g;
.super Lmiuix/springback/trigger/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/b;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b$g;->a:Lmiuix/springback/trigger/b;

    invoke-direct {p0}, Lmiuix/springback/trigger/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b$g;-><init>(Lmiuix/springback/trigger/b;)V

    return-void
.end method


# virtual methods
.method a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/d;->a(II)V

    return-void
.end method

.method b(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/d;->b(II)V

    return-void
.end method

.method c()Z
    .locals 3

    iget-object v0, p0, Lmiuix/springback/trigger/b$g;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$g;->a:Lmiuix/springback/trigger/b;

    invoke-static {v0}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    instance-of v0, v0, Lmiuix/springback/trigger/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$g;->a:Lmiuix/springback/trigger/b;

    iget v1, v0, Lmiuix/springback/trigger/b;->A:I

    invoke-static {v0}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    if-le v1, v0, :cond_0

    iget-object v0, p0, Lmiuix/springback/trigger/b$g;->a:Lmiuix/springback/trigger/b;

    iget-object v1, v0, Lmiuix/springback/trigger/b;->j:Lmiuix/springback/view/SpringBackLayout;

    const/4 v2, 0x0

    invoke-static {v0}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object v0

    iget v0, v0, Lmiuix/springback/trigger/a$a;->mTriggerPoint:I

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Lmiuix/springback/view/SpringBackLayout;->G(II)V

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0}, Lmiuix/springback/trigger/d;->c()Z

    move-result v0

    return v0
.end method
