.class public Lcd/e;
.super Lcd/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcd/e;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e041e

    invoke-direct {p0, v0, p1}, Lcd/g;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcd/e$a;

    invoke-direct {v0, p1}, Lcd/e$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method
