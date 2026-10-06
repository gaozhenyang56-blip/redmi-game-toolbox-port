.class Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$BackgroundRestrictChangedListener;
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
    name = "BackgroundRestrictChangedListener"
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

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$BackgroundRestrictChangedListener;->mFragmentRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onToolbarItemClick(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment$BackgroundRestrictChangedListener;->mFragmentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    :try_start_0
    invoke-static {p1}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1300(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {p1, p2, v0}, Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;->access$1500(Lcom/miui/networkassistant/ui/fragment/ShowAppDetailFragment;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method
