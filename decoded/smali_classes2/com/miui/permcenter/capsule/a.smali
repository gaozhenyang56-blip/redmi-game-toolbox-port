.class public final synthetic Lcom/miui/permcenter/capsule/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/capsule/b;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/miui/permcenter/capsule/b$d;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/capsule/b;ZLcom/miui/permcenter/capsule/b$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/capsule/a;->a:Lcom/miui/permcenter/capsule/b;

    iput-boolean p2, p0, Lcom/miui/permcenter/capsule/a;->b:Z

    iput-object p3, p0, Lcom/miui/permcenter/capsule/a;->c:Lcom/miui/permcenter/capsule/b$d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/capsule/a;->a:Lcom/miui/permcenter/capsule/b;

    iget-boolean v1, p0, Lcom/miui/permcenter/capsule/a;->b:Z

    iget-object v2, p0, Lcom/miui/permcenter/capsule/a;->c:Lcom/miui/permcenter/capsule/b$d;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/permcenter/capsule/b;->k(Lcom/miui/permcenter/capsule/b;ZLcom/miui/permcenter/capsule/b$d;Landroid/view/View;)V

    return-void
.end method
