.class public Lcd/g;
.super Lcom/miui/common/card/models/FunctionCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd/g$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcd/g;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(ILcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e041c

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FunctionCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method static synthetic a(Lcd/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcd/g;->c:Z

    return p0
.end method

.method static synthetic b(Lcd/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcd/g;->b:Z

    return p0
.end method

.method static synthetic c(Lcd/g;)Z
    .locals 0

    iget-boolean p0, p0, Lcd/g;->a:Z

    return p0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcd/g$a;

    invoke-direct {v0, p1}, Lcd/g$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setBottomRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcd/g;->b:Z

    return-void
.end method

.method public setTopRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcd/g;->a:Z

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
