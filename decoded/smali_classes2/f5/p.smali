.class public final synthetic Lf5/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/dock/edit/DockAppEditActivity;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/edit/DockAppEditActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/p;->a:Lcom/miui/dock/edit/DockAppEditActivity;

    iput-object p2, p0, Lf5/p;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf5/p;->a:Lcom/miui/dock/edit/DockAppEditActivity;

    iget-object v1, p0, Lf5/p;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->c(Lcom/miui/dock/edit/DockAppEditActivity;Ljava/util/List;)V

    return-void
.end method
