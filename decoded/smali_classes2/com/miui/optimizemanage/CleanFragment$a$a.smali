.class Lcom/miui/optimizemanage/CleanFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizemanage/CleanFragment$a;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizemanage/CleanFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/CleanFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/CleanFragment$a$a;->a:Lcom/miui/optimizemanage/CleanFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/optimizemanage/CleanFragment$a$a;->b(Lcom/miui/optimizemanage/CleanFragment;)V

    return-void
.end method

.method private static synthetic b(Lcom/miui/optimizemanage/CleanFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/optimizemanage/CleanFragment;->s0(Lcom/miui/optimizemanage/CleanFragment;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$a$a;->a:Lcom/miui/optimizemanage/CleanFragment$a;

    iget-object v0, v0, Lcom/miui/optimizemanage/CleanFragment$a;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/CleanFragment;->p0(Lcom/miui/optimizemanage/CleanFragment;)Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizemanage/CleanFragment$a$a;->a:Lcom/miui/optimizemanage/CleanFragment$a;

    iget-object v1, v1, Lcom/miui/optimizemanage/CleanFragment$a;->a:Lcom/miui/optimizemanage/CleanFragment;

    new-instance v2, Lcom/miui/optimizemanage/b;

    invoke-direct {v2, v1}, Lcom/miui/optimizemanage/b;-><init>(Lcom/miui/optimizemanage/CleanFragment;)V

    invoke-virtual {v0, v2}, Lcom/miui/common/ui/a;->setOnAnimOverListener(Lcom/miui/common/ui/a$c;)V

    iget-object v0, p0, Lcom/miui/optimizemanage/CleanFragment$a$a;->a:Lcom/miui/optimizemanage/CleanFragment$a;

    iget-object v0, v0, Lcom/miui/optimizemanage/CleanFragment$a;->a:Lcom/miui/optimizemanage/CleanFragment;

    invoke-static {v0}, Lcom/miui/optimizemanage/CleanFragment;->p0(Lcom/miui/optimizemanage/CleanFragment;)Lcom/miui/optimizemanage/view/OptimizeManageAnimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/ui/a;->d()V

    return-void
.end method
