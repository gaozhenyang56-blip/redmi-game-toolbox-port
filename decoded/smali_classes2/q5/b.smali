.class public Lq5/b;
.super Lcom/miui/common/card/models/BaseCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq5/b$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0172

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/BaseCardModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lq5/b$a;

    invoke-direct {v0, p1}, Lq5/b$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
