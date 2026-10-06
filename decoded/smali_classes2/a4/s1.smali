.class public final synthetic La4/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/view/FontSizeAdjustView;

.field public final synthetic b:Lcom/miui/autotask/view/FontWeightAdjustView;

.field public final synthetic c:La4/e2$g;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;La4/e2$g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/s1;->a:Lcom/miui/autotask/view/FontSizeAdjustView;

    iput-object p2, p0, La4/s1;->b:Lcom/miui/autotask/view/FontWeightAdjustView;

    iput-object p3, p0, La4/s1;->c:La4/e2$g;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, La4/s1;->a:Lcom/miui/autotask/view/FontSizeAdjustView;

    iget-object v1, p0, La4/s1;->b:Lcom/miui/autotask/view/FontWeightAdjustView;

    iget-object v2, p0, La4/s1;->c:La4/e2$g;

    invoke-static {v0, v1, v2, p1, p2}, La4/e2;->g0(Lcom/miui/autotask/view/FontSizeAdjustView;Lcom/miui/autotask/view/FontWeightAdjustView;La4/e2$g;Landroid/content/DialogInterface;I)V

    return-void
.end method
