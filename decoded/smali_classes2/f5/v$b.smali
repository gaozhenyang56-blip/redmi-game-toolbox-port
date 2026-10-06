.class Lf5/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyh/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf5/v;->c()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg5/f;

.field final synthetic b:Lf5/v;


# direct methods
.method constructor <init>(Lf5/v;Lg5/f;)V
    .locals 0

    iput-object p1, p0, Lf5/v$b;->b:Lf5/v;

    iput-object p2, p0, Lf5/v$b;->a:Lg5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lf5/v$b;->a:Lg5/f;

    invoke-virtual {p1, p3}, Lg5/f;->g(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lsh/b;)V
    .locals 0

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
