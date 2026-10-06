.class public Lcom/miui/antivirus/model/d;
.super Lcom/miui/antivirus/model/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antivirus/model/d$d;,
        Lcom/miui/antivirus/model/d$b;,
        Lcom/miui/antivirus/model/d$c;
    }
.end annotation


# instance fields
.field protected i:Lcom/miui/antivirus/model/d$c;

.field protected j:Lcom/miui/antivirus/model/d$b;

.field protected k:Lcom/miui/antivirus/model/d$d;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lo2/g$k;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Lo2/g$l;

.field private t:Z

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/model/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/model/d;->t:Z

    return-void
.end method

.method public constructor <init>(Lcom/miui/antivirus/model/d$c;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/model/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antivirus/model/d;->t:Z

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->i:Lcom/miui/antivirus/model/d$c;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->w:Z

    return v0
.end method

.method public B(Lcom/miui/antivirus/model/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->j:Lcom/miui/antivirus/model/d$b;

    return-void
.end method

.method public C(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->m:Ljava/lang/String;

    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->o:Ljava/lang/String;

    return-void
.end method

.method public E(Lcom/miui/antivirus/model/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->i:Lcom/miui/antivirus/model/d$c;

    return-void
.end method

.method public F(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->x:Ljava/lang/String;

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/a;->c:Ljava/lang/String;

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->v:Ljava/lang/String;

    return-void
.end method

.method public I(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->l:Ljava/lang/String;

    return-void
.end method

.method public K(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/a;->e:Z

    return-void
.end method

.method public M(Lcom/miui/antivirus/model/d$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->k:Lcom/miui/antivirus/model/d$d;

    return-void
.end method

.method public N(Lo2/g$k;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->p:Lo2/g$k;

    return-void
.end method

.method public O(Lo2/g$l;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->s:Lo2/g$l;

    return-void
.end method

.method public P(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/d;->t:Z

    return-void
.end method

.method public Q(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/antivirus/model/d;->w:Z

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->n:Ljava/lang/String;

    return-void
.end method

.method public S(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/a;->b:Ljava/lang/String;

    return-void
.end method

.method public T(I)V
    .locals 0

    iput p1, p0, Lcom/miui/antivirus/model/d;->u:I

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->q:Ljava/lang/String;

    return-void
.end method

.method public V(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/model/d;->r:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/a;->e:Z

    return v0
.end method

.method public getLayoutId()I
    .locals 2

    sget-object v0, Lcom/miui/antivirus/model/d$a;->a:[I

    iget-object v1, p0, Lcom/miui/antivirus/model/d;->i:Lcom/miui/antivirus/model/d$c;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const v0, 0x7f0e0525

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/antivirus/model/d;->k:Lcom/miui/antivirus/model/d$d;

    sget-object v1, Lcom/miui/antivirus/model/d$d;->d:Lcom/miui/antivirus/model/d$d;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0e04ca

    return v0

    :cond_0
    :pswitch_1
    const v0, 0x7f0e04c8

    return v0

    :pswitch_2
    const v0, 0x7f0e04cd

    return v0

    :pswitch_3
    const v0, 0x7f0e04ce

    return v0

    :pswitch_4
    const v0, 0x7f0e04c7

    return v0

    :pswitch_5
    const v0, 0x7f0e04c2

    return v0

    :pswitch_6
    const v0, 0x7f0e04c3

    return v0

    :pswitch_7
    const v0, 0x7f0e04c6

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public h()Lcom/miui/antivirus/model/d$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->j:Lcom/miui/antivirus/model/d$b;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k()Lcom/miui/antivirus/model/d$c;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->i:Lcom/miui/antivirus/model/d$c;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->x:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->v:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method public q()Lcom/miui/antivirus/model/d$d;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->k:Lcom/miui/antivirus/model/d$d;

    return-object v0
.end method

.method public r()Lo2/g$k;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->p:Lo2/g$k;

    return-object v0
.end method

.method public s()Lo2/g$l;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->s:Lo2/g$l;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/miui/antivirus/model/d;->u:I

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/model/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/antivirus/model/d;->t:Z

    return v0
.end method
