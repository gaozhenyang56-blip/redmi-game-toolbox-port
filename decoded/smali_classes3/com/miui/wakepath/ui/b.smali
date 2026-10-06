.class public final synthetic Lcom/miui/wakepath/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/wakepath/ui/e;

.field public final synthetic b:Lcom/miui/wakepath/ui/e$b;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/wakepath/ui/b;->a:Lcom/miui/wakepath/ui/e;

    iput-object p2, p0, Lcom/miui/wakepath/ui/b;->b:Lcom/miui/wakepath/ui/e$b;

    iput-object p3, p0, Lcom/miui/wakepath/ui/b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/wakepath/ui/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/wakepath/ui/b;->a:Lcom/miui/wakepath/ui/e;

    iget-object v1, p0, Lcom/miui/wakepath/ui/b;->b:Lcom/miui/wakepath/ui/e$b;

    iget-object v2, p0, Lcom/miui/wakepath/ui/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/wakepath/ui/b;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/wakepath/ui/e;->a(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
