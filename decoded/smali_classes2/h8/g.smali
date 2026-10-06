.class public Lh8/g;
.super Lh8/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh8/g$b;,
        Lh8/g$a;
    }
.end annotation


# instance fields
.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lh8/b;-><init>(I)V

    iput p3, p0, Lh8/g;->f:I

    iput p2, p0, Lh8/g;->d:I

    invoke-direct {p0}, Lh8/g;->j()Z

    move-result p1

    iput-boolean p1, p0, Lh8/g;->g:Z

    return-void
.end method

.method public static synthetic g(Lh8/g$a;Z)V
    .locals 0

    invoke-static {p0, p1}, Lh8/g;->p(Lh8/g$a;Z)V

    return-void
.end method

.method private h()V
    .locals 1

    iget-boolean v0, p0, Lh8/g;->g:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lh8/g;->g:Z

    return-void
.end method

.method private j()Z
    .locals 1

    iget v0, p0, Lh8/g;->f:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    invoke-static {}, Lj8/o;->g()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-static {}, Lj8/m;->j()Z

    move-result v0

    return v0

    :pswitch_2
    invoke-static {}, Lj8/m;->b()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic p(Lh8/g$a;Z)V
    .locals 3

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/o;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Lj8/k;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lj8/k;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {p0, v1}, Lh8/g$a;->callback(Z)V

    return-void
.end method


# virtual methods
.method public d()Z
    .locals 3

    iget v0, p0, Lh8/g;->f:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    return v0

    :pswitch_1
    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lj8/m;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_2
    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lj8/m;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/m;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :cond_2
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->d()Z

    move-result v0

    return v0

    :cond_3
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->c()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lh8/g;->k()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "spatial_active"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lh8/g;->g:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncNewState : SETTINGS_SRS_SPATIAL => "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lh8/g;->g:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SrsSettingsModel"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public i(Lh8/g$a;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lh8/g;->f:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {}, Lj8/m;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object v0

    invoke-virtual {v0}, Lj8/o;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lj8/k;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lj8/f;->o()Lj8/f;

    move-result-object v0

    new-instance v1, Lh8/f;

    invoke-direct {v1, p1}, Lh8/f;-><init>(Lh8/g$a;)V

    invoke-virtual {v0, v1}, Lj8/f;->k(Lj8/f$c;)V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lj8/m;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    invoke-static {}, Lj8/k;->h()Z

    move-result v0

    invoke-interface {p1, v0}, Lh8/g$a;->callback(Z)V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-interface {p1, v2}, Lh8/g$a;->callback(Z)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lh8/g;->f:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lh8/g;->d:I

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lh8/g;->e:I

    return v0
.end method

.method public n()I
    .locals 2

    iget v0, p0, Lh8/g;->f:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-static {}, Li8/c;->n()I

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Li8/c;->o()I

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lh8/g;->g:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: funcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh8/g;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tlevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh8/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SrsSettingsModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lh8/g;->q(Landroid/view/View;Lh8/g$b;)V

    return-void
.end method

.method public q(Landroid/view/View;Lh8/g$b;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick: funcId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh8/g;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tlevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lh8/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tlistener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SrsSettingsModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lh8/g;->f:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    const/4 v2, 0x7

    if-eq v0, v2, :cond_5

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Lj8/o;->c()Lj8/o;

    move-result-object p1

    invoke-virtual {p0}, Lh8/g;->o()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lj8/o;->k(Z)V

    if-eqz p2, :cond_7

    :goto_0
    invoke-interface {p2}, Lh8/g$b;->a()V

    goto/16 :goto_1

    :pswitch_1
    invoke-static {}, Lj8/m;->e()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, La8/t;->k()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {v2}, La8/t;->w(Z)V

    :cond_0
    invoke-static {}, Lj8/m;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {v2}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->i(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lh8/g;->o()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lj8/m;->q(Landroid/content/Context;Z)V

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lj8/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lh8/g;->o()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->i(I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply fw audio, EFFECT_SURROUND to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lj8/m;->d()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, La8/t;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, La8/t;->w(Z)V

    :cond_3
    invoke-static {}, Lj8/m;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lj8/m;->q(Landroid/content/Context;Z)V

    :cond_4
    invoke-virtual {p0}, Lh8/g;->o()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->i(I)V

    if-eqz p2, :cond_7

    goto :goto_0

    :cond_5
    iget p1, p0, Lh8/g;->e:I

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->n(I)V

    iget p1, p0, Lh8/g;->e:I

    invoke-static {p1}, Li8/c;->o0(I)V

    goto :goto_1

    :cond_6
    iget p1, p0, Lh8/g;->e:I

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/utils/MiSoundEffectUtils;->o(I)V

    iget p1, p0, Lh8/g;->e:I

    invoke-static {p1}, Li8/c;->p0(I)V

    :cond_7
    :goto_1
    invoke-direct {p0}, Lh8/g;->h()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh8/g;->g:Z

    return-void
.end method

.method public s(I)V
    .locals 0

    iput p1, p0, Lh8/g;->e:I

    return-void
.end method
