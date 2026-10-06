.class public final synthetic Lu9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lu9/c$a;


# direct methods
.method public synthetic constructor <init>(Lu9/c$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu9/b;->a:Lu9/c$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lu9/b;->a:Lu9/c$a;

    invoke-static {v0, p1}, Lu9/c;->k(Lu9/c$a;Landroid/view/View;)V

    return-void
.end method
