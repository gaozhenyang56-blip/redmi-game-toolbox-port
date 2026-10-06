.class Lcom/miui/permcenter/detection/RiskAppDeleteActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/RiskAppDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$c;->a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0b01ce

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$c;->a:Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;->l0()V

    :cond_0
    return-void
.end method
