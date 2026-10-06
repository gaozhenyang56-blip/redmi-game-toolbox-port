.class Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$g;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$g;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, p2, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$g;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$g;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f060ab6

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$g;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
