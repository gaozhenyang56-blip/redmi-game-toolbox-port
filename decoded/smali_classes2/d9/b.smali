.class public final synthetic Ld9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/gamecenter/ui/GameCenterMainView;

.field public final synthetic b:Lb9/f$b;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld9/b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    iput-object p2, p0, Ld9/b;->b:Lb9/f$b;

    iput p3, p0, Ld9/b;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ld9/b;->a:Lcom/miui/gamecenter/ui/GameCenterMainView;

    iget-object v1, p0, Ld9/b;->b:Lb9/f$b;

    iget v2, p0, Ld9/b;->c:I

    invoke-static {v0, v1, v2, p1}, Lcom/miui/gamecenter/ui/GameCenterMainView;->a(Lcom/miui/gamecenter/ui/GameCenterMainView;Lb9/f$b;ILandroid/view/View;)V

    return-void
.end method
