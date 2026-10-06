.class Lyf/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyf/a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lyf/a;


# direct methods
.method constructor <init>(Lyf/a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lyf/a$a;->b:Lyf/a;

    iput-object p2, p0, Lyf/a$a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lyf/a$a;->a:Landroid/content/Intent;

    const-string v1, "extra_need_update_app_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lpf/g;->H(I)V

    iget-object v0, p0, Lyf/a$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.PACKAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lpf/g;->I(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
