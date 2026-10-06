.class public Lcom/miui/gamebooster/ui/touch/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz7/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/ui/touch/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;

.field private b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

.field private c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;

.field private d:Lcom/miui/gamebooster/ui/touch/a$a;

.field private e:Lcom/miui/gamebooster/ui/touch/a$a;

.field private f:Lcom/miui/gamebooster/ui/touch/a$a;

.field private g:Lcom/miui/gamebooster/ui/touch/a$a;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:I

.field private final k:Z

.field private final l:Z

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    invoke-static {}, La8/b;->u()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->k:Z

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    invoke-virtual {v0}, La8/b;->v()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    :cond_0
    invoke-direct {p0}, Lcom/miui/gamebooster/ui/touch/a;->j()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/gamebooster/ui/touch/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/touch/a;->h(I)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/gamebooster/ui/touch/a;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/gamebooster/ui/touch/a;->l(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/gamebooster/ui/touch/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/touch/a;->k(I)V

    return-void
.end method

.method private f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;
    .locals 4

    invoke-static {}, La8/b;->d()La8/b;

    move-result-object v0

    new-instance v1, Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-direct {v1}, Lcom/miui/gamebooster/ui/touch/a$a;-><init>()V

    invoke-virtual {p1}, Lz7/e;->a()I

    move-result v2

    iget-boolean v3, p0, Lcom/miui/gamebooster/ui/touch/a;->k:Z

    if-nez v3, :cond_1

    invoke-static {}, La8/b;->d()La8/b;

    sget-object v3, Lz7/e;->b:Lz7/e;

    if-ne p1, v3, :cond_0

    sget v2, La8/b;->f:I

    goto :goto_0

    :cond_0
    sget-object v3, Lz7/e;->c:Lz7/e;

    if-ne p1, v3, :cond_1

    sget v2, La8/b;->g:I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/gamebooster/ui/touch/a;->g(Z)I

    move-result p1

    invoke-virtual {v0, p1, v2}, La8/b;->l(II)I

    move-result v3

    iput v3, v1, Lcom/miui/gamebooster/ui/touch/a$a;->a:I

    invoke-virtual {v0, p1, v2}, La8/b;->o(II)I

    move-result v3

    iput v3, v1, Lcom/miui/gamebooster/ui/touch/a$a;->b:I

    invoke-virtual {v0, p1, v2}, La8/b;->i(II)I

    move-result p1

    iput p1, v1, Lcom/miui/gamebooster/ui/touch/a$a;->c:I

    return-object v1
.end method

.method public static g(Z)I
    .locals 1

    invoke-static {}, Lx4/y;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    invoke-static {p0}, La8/z;->c(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private h(I)V
    .locals 8

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lz7/c;

    invoke-direct {v1, p0, p1}, Lz7/c;-><init>(Lcom/miui/gamebooster/ui/touch/a;I)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerModeChanged: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvTouchDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    if-eqz v2, :cond_0

    iget v3, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    iget-object v4, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v5, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v6, p0, Lcom/miui/gamebooster/ui/touch/a;->f:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v7, p0, Lcom/miui/gamebooster/ui/touch/a;->g:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->l(ILcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/touch/a;->p(I)V

    return-void
.end method

.method private j()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->l:Z

    if-eqz v0, :cond_0

    sget-object v0, Lz7/e;->b:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    sget-object v0, Lz7/e;->c:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    :goto_0
    sget-object v0, Lz7/e;->e:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->g:Lcom/miui/gamebooster/ui/touch/a$a;

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->k:Z

    if-eqz v0, :cond_1

    sget-object v0, Lz7/e;->b:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    sget-object v0, Lz7/e;->c:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    sget-object v0, Lz7/e;->d:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->f:Lcom/miui/gamebooster/ui/touch/a$a;

    goto :goto_0

    :cond_1
    sget-object v0, Lz7/e;->b:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    sget-object v0, Lz7/e;->c:Lz7/e;

    invoke-direct {p0, v0}, Lcom/miui/gamebooster/ui/touch/a;->f(Lz7/e;)Lcom/miui/gamebooster/ui/touch/a$a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    :goto_1
    return-void
.end method

.method private synthetic k(I)V
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->i:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/ui/touch/a;->j:I

    const-string v3, "settings_touch_mode"

    invoke-static {v0, v1, v2, v3, p1}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.method private synthetic l(Ljava/lang/String;II)V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->i:Ljava/lang/String;

    iget v2, p0, Lcom/miui/gamebooster/ui/touch/a;->j:I

    invoke-static {v0, v1, v2, p1, p2}, La8/j0;->s(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/a;->i:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lcom/miui/gamebooster/utils/a;->q0(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private n(ILjava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveUserSettings: key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tvalue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tmode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdvTouchDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    new-instance v1, Lz7/b;

    invoke-direct {v1, p0, p2, p1, p3}, Lz7/b;-><init>(Lcom/miui/gamebooster/ui/touch/a;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lef/z;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o(Landroid/widget/SeekBar;I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v0, Landroid/widget/AbsSeekBar;

    const-string v1, "setMin"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    invoke-static {v0, p1, v1, v3, v2}, Lbh/f;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdvTouchDelegate"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private p(I)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "classic_mode"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "expert_mode"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "customize"

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Lcom/miui/gamebooster/utils/a$n;->I(Ljava/lang/String;)V

    return-void
.end method

.method private r(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/miui/gamebooster/ui/touch/a$a;->b:I

    iget v1, p1, Lcom/miui/gamebooster/ui/touch/a$a;->a:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/miui/gamebooster/ui/touch/a;->o(Landroid/widget/SeekBar;I)V

    :cond_1
    iget v0, p1, Lcom/miui/gamebooster/ui/touch/a$a;->a:I

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/touch/a$a;->a()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 2

    iget v0, p0, Lcom/miui/gamebooster/ui/touch/a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, La8/b;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p2, v0, p1}, Lcom/miui/gamebooster/ui/touch/a;->n(ILjava/lang/String;I)V

    return-void
.end method

.method public e(Landroid/view/ViewGroup;Z)V
    .locals 4

    iput-boolean p2, p0, Lcom/miui/gamebooster/ui/touch/a;->m:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->l:Z

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f0e01f8

    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/a;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/touch/a;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/a;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;

    invoke-virtual {p1, p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->setITouchValueChangedCallback(Lz7/d;)V

    goto :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->m:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0e01f7

    goto :goto_0

    :cond_2
    const v0, 0x7f0e01fa

    :goto_0
    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    new-instance p2, Lz7/a;

    invoke-direct {p2, p0}, Lz7/a;-><init>(Lcom/miui/gamebooster/ui/touch/a;)V

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->setIModeChangeListener(Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2$b;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    invoke-virtual {p1, p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->setITouchValueChangedCallback(Lz7/d;)V

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->m:Z

    if-eqz v0, :cond_4

    const v0, 0x7f0e01f6

    goto :goto_1

    :cond_4
    const v0, 0x7f0e01f9

    :goto_1
    invoke-virtual {p2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;

    iput-object p2, p0, Lcom/miui/gamebooster/ui/touch/a;->a:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;

    invoke-virtual {p2, p0}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->setITouchValueChangedCallback(Lz7/d;)V

    iget-object p2, p0, Lcom/miui/gamebooster/ui/touch/a;->a:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method public i(Landroid/database/Cursor;)V
    .locals 4

    const-string v0, "AdvTouchDelegate"

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    const-string v2, "settings_gs"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gamebooster/ui/touch/a$a;->d:I

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    const-string v2, "settings_ts"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/miui/gamebooster/ui/touch/a$a;->d:I

    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/touch/a;->l:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "settings_op_stability"

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->g:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    :goto_0
    iput p1, v1, Lcom/miui/gamebooster/ui/touch/a$a;->d:I

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/miui/gamebooster/ui/touch/a;->k:Z

    if-eqz v1, :cond_3

    const-string v1, "settings_touch_mode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    if-eqz v1, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    :cond_2
    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->f:Lcom/miui/gamebooster/ui/touch/a$a;

    const-string v3, "settings_sensitivity"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/miui/gamebooster/ui/touch/a$a;->d:I

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->g:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "initDbValues: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initDbValues: t_mode="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\tt0="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tt1="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tt2="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->f:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tt3="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->g:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public m()V
    .locals 8

    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->c:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/a;->g:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual {v0, v1, v2}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV3;->a(Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/ui/touch/a;->k:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    iget v1, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->setTouchMode(I)V

    iget-object v2, p0, Lcom/miui/gamebooster/ui/touch/a;->b:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;

    iget v3, p0, Lcom/miui/gamebooster/ui/touch/a;->h:I

    iget-object v4, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v5, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v6, p0, Lcom/miui/gamebooster/ui/touch/a;->f:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v7, p0, Lcom/miui/gamebooster/ui/touch/a;->g:Lcom/miui/gamebooster/ui/touch/a$a;

    invoke-virtual/range {v2 .. v7}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV2;->l(ILcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;Lcom/miui/gamebooster/ui/touch/a$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->d:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->a:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->getTouchView0()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/touch/a;->r(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/touch/a;->e:Lcom/miui/gamebooster/ui/touch/a$a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/touch/a;->a:Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;

    invoke-virtual {v1}, Lcom/miui/gamebooster/ui/touch/GbAdvTouchSettingsViewV1;->getTouchView1()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/gamebooster/ui/touch/a;->r(Lcom/miui/gamebooster/ui/touch/a$a;Landroid/widget/SeekBar;)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/touch/a;->i:Ljava/lang/String;

    iput p2, p0, Lcom/miui/gamebooster/ui/touch/a;->j:I

    return-void
.end method
