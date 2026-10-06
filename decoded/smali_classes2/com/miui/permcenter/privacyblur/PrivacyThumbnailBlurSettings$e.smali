.class Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/permcenter/privacyblur/a$d;


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

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$e;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$e;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->m0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/privacyblur/a;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lfc/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$e;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->m0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/privacyblur/a;->l()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfc/b;

    invoke-static {v0, v1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->j0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Lfc/b;)V

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$e;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->m0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v0

    const-string v1, "payload_state"

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    return-void
.end method
