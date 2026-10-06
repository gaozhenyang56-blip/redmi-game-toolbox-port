.class public final synthetic Lcom/miui/wakepath/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/wakepath/ui/e;

.field public final synthetic b:Lcom/miui/wakepath/ui/e$b;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/wakepath/ui/c;->a:Lcom/miui/wakepath/ui/e;

    iput-object p2, p0, Lcom/miui/wakepath/ui/c;->b:Lcom/miui/wakepath/ui/e$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/wakepath/ui/c;->a:Lcom/miui/wakepath/ui/e;

    iget-object v1, p0, Lcom/miui/wakepath/ui/c;->b:Lcom/miui/wakepath/ui/e$b;

    invoke-static {v0, v1, p1}, Lcom/miui/wakepath/ui/e;->c(Lcom/miui/wakepath/ui/e;Lcom/miui/wakepath/ui/e$b;Landroid/view/View;)V

    return-void
.end method
