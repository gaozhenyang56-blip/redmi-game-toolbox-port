.class public Lcom/miui/antivirus/model/h;
.super Lcom/miui/antivirus/model/d;
.source "SourceFile"


# instance fields
.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/model/d$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/model/d;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->i:Lcom/miui/antivirus/model/d$c;

    sget-object p1, Lcom/miui/antivirus/model/d$b;->a:Lcom/miui/antivirus/model/d$b;

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->j:Lcom/miui/antivirus/model/d$b;

    return-void
.end method


# virtual methods
.method public W()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/h;->z:Z

    return v0
.end method

.method public X()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/h;->y:Z

    return v0
.end method

.method public Y(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/h;->z:Z

    return-void
.end method

.method public Z(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/h;->y:Z

    return-void
.end method
