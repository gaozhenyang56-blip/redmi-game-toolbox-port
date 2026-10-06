.class Lcom/miui/gamebooster/ui/SelectGameActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/SelectGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/SelectGameActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/SelectGameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$d;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$d;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->t0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$d;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->i0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Lmiuix/view/l$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->startSearchMode(Lmiuix/view/l$b;)V

    :cond_0
    return-void
.end method
