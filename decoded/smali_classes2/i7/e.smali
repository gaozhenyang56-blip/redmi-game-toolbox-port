.class public final synthetic Li7/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/predownload/b;

.field public final synthetic b:Landroid/widget/TextView;

.field public final synthetic c:Li7/a;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/predownload/b;Landroid/widget/TextView;Li7/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/e;->a:Lcom/miui/gamebooster/predownload/b;

    iput-object p2, p0, Li7/e;->b:Landroid/widget/TextView;

    iput-object p3, p0, Li7/e;->c:Li7/a;

    iput-object p4, p0, Li7/e;->d:Ljava/lang/String;

    iput-object p5, p0, Li7/e;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Li7/e;->a:Lcom/miui/gamebooster/predownload/b;

    iget-object v1, p0, Li7/e;->b:Landroid/widget/TextView;

    iget-object v2, p0, Li7/e;->c:Li7/a;

    iget-object v3, p0, Li7/e;->d:Ljava/lang/String;

    iget-object v4, p0, Li7/e;->e:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/gamebooster/predownload/b;->f(Lcom/miui/gamebooster/predownload/b;Landroid/widget/TextView;Li7/a;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
