.class Lcom/miui/securitycenter/ad/view/AdImageView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/ad/view/AdImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/ad/view/AdImageView;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/ad/view/AdImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/ad/view/AdImageView$a;->a:Lcom/miui/securitycenter/ad/view/AdImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/securitycenter/ad/view/AdImageView$a;->a:Lcom/miui/securitycenter/ad/view/AdImageView;

    const/16 v0, -0x64

    invoke-static {p1, v0}, Lcom/miui/securitycenter/ad/view/AdImageView;->access$002(Lcom/miui/securitycenter/ad/view/AdImageView;I)I

    return-void
.end method
