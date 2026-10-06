.class Lcom/miui/applicationlock/widget/MiuiKeyBoardView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/widget/MiuiKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$a;->a:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$a;->a:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/MiuiKeyBoardView;->c(Lcom/miui/applicationlock/widget/MiuiKeyBoardView;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/MiuiKeyBoardView$a;->a:Lcom/miui/applicationlock/widget/MiuiKeyBoardView;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
