.class public final synthetic Lmiuix/internal/widget/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lmiuix/internal/widget/f;


# direct methods
.method public synthetic constructor <init>(Lmiuix/internal/widget/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/internal/widget/d;->a:Lmiuix/internal/widget/f;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    iget-object v0, p0, Lmiuix/internal/widget/d;->a:Lmiuix/internal/widget/f;

    invoke-static {v0}, Lmiuix/internal/widget/f;->c(Lmiuix/internal/widget/f;)V

    return-void
.end method
