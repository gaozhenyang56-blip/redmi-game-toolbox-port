.class Lw8/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw8/j;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lw8/j;


# direct methods
.method constructor <init>(Lw8/j;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lw8/j$a;->b:Lw8/j;

    iput-object p2, p0, Lw8/j$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p2}, Lm6/a;->v0(Z)V

    iget-object p1, p0, Lw8/j$a;->a:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-static {p1}, La8/c;->b(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, La8/c;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
