.class Lcom/miui/superpower/SuperPowerProgressActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/superpower/SuperPowerProgressActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/miui/superpower/SuperPowerProgressActivity;


# direct methods
.method constructor <init>(Lcom/miui/superpower/SuperPowerProgressActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$b;->b:Lcom/miui/superpower/SuperPowerProgressActivity;

    iput-object p2, p0, Lcom/miui/superpower/SuperPowerProgressActivity$b;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/superpower/SuperPowerProgressActivity$b;->a:Landroid/view/View;

    const/16 v0, 0x1302

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
