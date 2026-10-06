.class Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbc/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbc/a$a<",
        "Ljava/util/List<",
        "Lfc/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->b(Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfc/a;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->n0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/permcenter/privacyblur/a;->q(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->n0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/privacyblur/a;->k()I

    move-result v1

    const v2, 0x7f10002c

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v2}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->n0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/permcenter/privacyblur/a;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$h;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->l0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
