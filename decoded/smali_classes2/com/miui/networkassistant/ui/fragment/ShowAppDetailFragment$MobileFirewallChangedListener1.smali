.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView$ToolbarItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MobileFirewallChangedListener1"
.end annotation


# instance fields
.field private mFragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener1;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onToolbarItemClick(Landroid/view/View;Z)V
    .locals 2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$MobileFirewallChangedListener1;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$900(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$800(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)[Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/view/SlideButtonToolbarItemView;->setChecked(Z)V

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1000(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1100(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lx4/f1;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
