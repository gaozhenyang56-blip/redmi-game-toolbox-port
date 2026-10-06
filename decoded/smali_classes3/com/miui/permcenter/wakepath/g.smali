.class public final synthetic Lcom/miui/permcenter/wakepath/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

.field public final synthetic b:Lyc/r;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Lyc/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/wakepath/g;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    iput-object p2, p0, Lcom/miui/permcenter/wakepath/g;->b:Lyc/r;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/wakepath/g;->a:Lcom/miui/permcenter/wakepath/WakePathDetailFragment;

    iget-object v1, p0, Lcom/miui/permcenter/wakepath/g;->b:Lyc/r;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/permcenter/wakepath/WakePathDetailFragment$b$a;->a(Lcom/miui/permcenter/wakepath/WakePathDetailFragment;Lyc/r;Landroid/content/DialogInterface;I)V

    return-void
.end method
