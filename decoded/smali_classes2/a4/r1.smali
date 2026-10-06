.class public final synthetic La4/r1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/autotask/view/FontWeightAdjustView$b;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/miui/autotask/view/FontSizeAdjustView;

.field public final synthetic c:Lcom/miui/autotask/view/FontWeightAdjustView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/r1;->a:Landroid/widget/TextView;

    iput-object p2, p0, La4/r1;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    iput-object p3, p0, La4/r1;->c:Lcom/miui/autotask/view/FontWeightAdjustView;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget-object v0, p0, La4/r1;->a:Landroid/widget/TextView;

    iget-object v1, p0, La4/r1;->b:Lcom/miui/autotask/view/FontSizeAdjustView;

    iget-object v2, p0, La4/r1;->c:Lcom/miui/autotask/view/FontWeightAdjustView;

    invoke-static {v0, v1, v2, p1}, La4/e2;->x(Landroid/widget/TextView;Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;I)V

    return-void
.end method
