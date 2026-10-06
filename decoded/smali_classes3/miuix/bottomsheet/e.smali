.class public final synthetic Lmiuix/bottomsheet/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc0/q;


# instance fields
.field public final synthetic a:Lmiuix/bottomsheet/BottomSheetDragHandleView;


# direct methods
.method public synthetic constructor <init>(Lmiuix/bottomsheet/BottomSheetDragHandleView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/bottomsheet/e;->a:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    return-void
.end method


# virtual methods
.method public final perform(Landroid/view/View;Lc0/q$a;)Z
    .locals 1

    iget-object v0, p0, Lmiuix/bottomsheet/e;->a:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    invoke-static {v0, p1, p2}, Lmiuix/bottomsheet/BottomSheetDragHandleView;->a(Lmiuix/bottomsheet/BottomSheetDragHandleView;Landroid/view/View;Lc0/q$a;)Z

    move-result p1

    return p1
.end method
