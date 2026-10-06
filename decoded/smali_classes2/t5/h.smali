.class public final synthetic Lt5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lt5/i;

.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lt5/i;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt5/h;->a:Lt5/i;

    iput-object p2, p0, Lt5/h;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lt5/h;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lt5/h;->a:Lt5/i;

    iget-object v1, p0, Lt5/h;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lt5/h;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lt5/i;->f(Lt5/i;Landroid/widget/ImageView;Ljava/lang/String;)V

    return-void
.end method
