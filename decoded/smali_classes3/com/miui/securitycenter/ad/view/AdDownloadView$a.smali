.class Lcom/miui/securitycenter/ad/view/AdDownloadView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/ad/view/AdDownloadView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/ad/view/AdDownloadView;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/ad/view/AdDownloadView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView$a;->a:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/ad/view/AdDownloadView$a;->a:Lcom/miui/securitycenter/ad/view/AdDownloadView;

    invoke-static {v0}, Lcom/miui/securitycenter/ad/view/AdDownloadView;->g(Lcom/miui/securitycenter/ad/view/AdDownloadView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
