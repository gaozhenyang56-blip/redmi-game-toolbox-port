.class Lcom/miui/securityscan/shortcut/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/miui/securityscan/shortcut/d$b;

.field b:Z


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/shortcut/d$b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/shortcut/c;->a:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {p2, p1}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/securityscan/shortcut/c;->b:Z

    return-void
.end method
