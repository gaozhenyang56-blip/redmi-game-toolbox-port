.class Lcom/miui/optimizemanage/ResultFragment$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizemanage/ResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "k"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizemanage/ResultFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/optimizemanage/ResultFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$k;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizemanage/ResultFragment$k;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$k;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizemanage/ResultFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->n0(Lcom/miui/optimizemanage/ResultFragment;)Lcom/miui/optimizecenter/onekeyclean/shortcut/IShortcutCheck;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/miui/optimizemanage/ResultFragment;->m0(Lcom/miui/optimizemanage/ResultFragment;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/ResultFragment$k;->a:Landroid/content/Context;

    const p2, 0x7f120f68

    invoke-static {p1, p2}, Lx4/y1;->j(Landroid/content/Context;I)V

    const-string p1, "module_show"

    const-string p2, "ok_click"

    invoke-static {p1, p2}, Lgb/a;->j(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
