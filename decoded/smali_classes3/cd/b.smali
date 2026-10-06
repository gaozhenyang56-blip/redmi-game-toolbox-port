.class public Lcd/b;
.super Lcom/miui/common/card/models/TitleCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd/b$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0420

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/TitleCardModel;-><init>(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcd/b;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcd/b;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcd/b;->b:I

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcd/b;->a:Z

    return v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcd/b;->a:Z

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcd/b$a;

    invoke-direct {v0, p1}, Lcd/b$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcd/b;->b:I

    return-void
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
