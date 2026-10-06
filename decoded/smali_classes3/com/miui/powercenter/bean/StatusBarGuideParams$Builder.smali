.class public Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/bean/StatusBarGuideParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

.field right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/miui/powercenter/bean/StatusBarGuideParams;
    .locals 3

    new-instance v0, Lcom/miui/powercenter/bean/StatusBarGuideParams;

    iget-object v1, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    iget-object v2, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    invoke-direct {v0, v1, v2}, Lcom/miui/powercenter/bean/StatusBarGuideParams;-><init>(Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;)V

    return-object v0
.end method

.method public setLeftIcon(Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    invoke-direct {v0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    iput-object p1, v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->iconParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;

    return-object p0
.end method

.method public setLeftText(Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    invoke-direct {v0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->left:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    iput-object p1, v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->textParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;

    return-object p0
.end method

.method public setRightIcon(Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    invoke-direct {v0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    iput-object p1, v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->iconParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$IconParams;

    return-object p0
.end method

.method public setRightText(Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;)Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    invoke-direct {v0}, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/bean/StatusBarGuideParams$Builder;->right:Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;

    iput-object p1, v0, Lcom/miui/powercenter/bean/StatusBarGuideParams$ViewArea;->textParams:Lcom/miui/powercenter/bean/StatusBarGuideParams$TextParams;

    return-object p0
.end method
