.class public final synthetic Ljc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljc/e;


# direct methods
.method public synthetic constructor <init>(Ljc/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc/d;->a:Ljc/e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ljc/d;->a:Ljc/e;

    invoke-static {v0, p1}, Ljc/e;->k(Ljc/e;Landroid/view/View;)V

    return-void
.end method
