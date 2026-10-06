.class public Lcom/miui/antivirus/model/a;
.super Lcom/miui/antivirus/result/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/model/a$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/miui/antivirus/model/a$a;

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/result/a;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/model/a;->e:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/model/a;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/model/a;->g:Z

    iput-boolean v0, p0, Lcom/miui/antivirus/model/a;->h:Z

    sget-object v0, Lcom/miui/antivirus/result/a$a;->a:Lcom/miui/antivirus/result/a$a;

    invoke-virtual {p0, v0}, Lcom/miui/antivirus/result/a;->setBaseCardType(Lcom/miui/antivirus/result/a$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/miui/antivirus/model/a$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/a;->d:Lcom/miui/antivirus/model/a$a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/a;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/a;->e:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/a;->f:Z

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/model/a;->a:I

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/a;->b:Ljava/lang/String;

    return-void
.end method

.method public isBottom()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/a;->h:Z

    return v0
.end method

.method public isTop()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/a;->g:Z

    return v0
.end method

.method public setBottom(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/a;->h:Z

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/a;->g:Z

    return-void
.end method
