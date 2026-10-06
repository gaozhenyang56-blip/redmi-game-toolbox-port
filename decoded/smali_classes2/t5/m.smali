.class public final synthetic Lt5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lt5/k$i;

.field public final synthetic b:Lt5/k;


# direct methods
.method public synthetic constructor <init>(Lt5/k$i;Lt5/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/m;->a:Lt5/k$i;

    iput-object p2, p0, Lt5/m;->b:Lt5/k;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lt5/m;->a:Lt5/k$i;

    iget-object v1, p0, Lt5/m;->b:Lt5/k;

    invoke-static {v0, v1, p1, p2}, Lt5/k$i;->c(Lt5/k$i;Lt5/k;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
