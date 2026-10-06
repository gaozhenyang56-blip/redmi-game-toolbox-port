.class public final synthetic Lnb/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lnb/f$a;


# direct methods
.method public synthetic constructor <init>(Lnb/f$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb/e;->a:Lnb/f$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lnb/e;->a:Lnb/f$a;

    invoke-static {v0, p1}, Lnb/f$a;->b(Lnb/f$a;Landroid/view/View;)V

    return-void
.end method
