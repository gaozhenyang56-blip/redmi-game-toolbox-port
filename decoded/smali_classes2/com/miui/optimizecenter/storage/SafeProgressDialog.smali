.class public final Lcom/miui/optimizecenter/storage/SafeProgressDialog;
.super Lmiuix/appcompat/app/ProgressDialog;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/SafeProgressDialog$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/miui/optimizecenter/storage/SafeProgressDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:Z

.field private final c:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/optimizecenter/storage/SafeProgressDialog$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/optimizecenter/storage/SafeProgressDialog$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->c:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic e(Lcom/miui/optimizecenter/storage/SafeProgressDialog;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->h(Lcom/miui/optimizecenter/storage/SafeProgressDialog;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/miui/optimizecenter/storage/SafeProgressDialog;
    .locals 7
    .param p0    # Landroidx/fragment/app/FragmentActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->d:Lcom/miui/optimizecenter/storage/SafeProgressDialog$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miui/optimizecenter/storage/SafeProgressDialog$a;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/miui/optimizecenter/storage/SafeProgressDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Lcom/miui/optimizecenter/storage/SafeProgressDialog;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->a:J

    sub-long/2addr v0, v4

    iput-wide v2, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->a:J

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->c:Landroid/os/Handler;

    new-instance v1, Lra/n;

    invoke-direct {v1, p0, p1}, Lra/n;-><init>(Lcom/miui/optimizecenter/storage/SafeProgressDialog;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/v;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->a(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/v;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->b(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/v;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->c(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/v;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->d(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    return-void
.end method

.method public onStart(Landroidx/lifecycle/v;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->e(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->b:Z

    return-void
.end method

.method public onStop(Landroidx/lifecycle/v;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "owner"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Landroidx/lifecycle/d;->f(Landroidx/lifecycle/e;Landroidx/lifecycle/v;)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->b:Z

    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/optimizecenter/storage/SafeProgressDialog;->a:J

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method
