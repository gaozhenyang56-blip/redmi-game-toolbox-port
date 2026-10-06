.class Lcom/miui/securityscan/MainFragment$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securityscan/MainFragment;->o2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$s;->a:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/securityscan/MainFragment$s;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/MainFragment$s;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/miui/securityscan/MainFragment$s;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v2}, Lcom/miui/securityscan/MainFragment;->k1(Lcom/miui/securityscan/MainFragment;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$s;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0}, Lcom/miui/securityscan/MainFragment;->k1(Lcom/miui/securityscan/MainFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/securityscan/MainFragment$s;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v1}, Lcom/miui/securityscan/MainFragment;->k1(Lcom/miui/securityscan/MainFragment;)Landroid/view/View;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$s;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1, p2}, Lcom/miui/securityscan/MainFragment;->l1(Lcom/miui/securityscan/MainFragment;Landroid/view/View;)Landroid/view/View;

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$s;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->k1(Lcom/miui/securityscan/MainFragment;)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/securityscan/a;

    invoke-direct {p2, p0}, Lcom/miui/securityscan/a;-><init>(Lcom/miui/securityscan/MainFragment$s;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
