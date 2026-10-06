.class public final synthetic Lcom/miui/permcenter/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/permcenter/f$a;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/f;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/f;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/d;->a:Lcom/miui/permcenter/f;

    iput-object p2, p0, Lcom/miui/permcenter/d;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onOpNoted(IILjava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/permcenter/d;->a:Lcom/miui/permcenter/f;

    iget-object v1, p0, Lcom/miui/permcenter/d;->b:Landroid/content/Context;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/permcenter/f;->a(Lcom/miui/permcenter/f;Landroid/content/Context;IILjava/lang/String;I)V

    return-void
.end method
