.class Lcom/miui/antivirus/ui/MainActivityView$c;
.super La8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/ui/MainActivityView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/ui/MainActivityView;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/ui/MainActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView$c;->a:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-direct {p0}, La8/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antivirus/ui/MainActivityView$c;->a:Lcom/miui/antivirus/ui/MainActivityView;

    invoke-static {p1}, Lcom/miui/antivirus/ui/MainActivityView;->c(Lcom/miui/antivirus/ui/MainActivityView;)Lcom/miui/antivirus/ui/MainContentFrame;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
