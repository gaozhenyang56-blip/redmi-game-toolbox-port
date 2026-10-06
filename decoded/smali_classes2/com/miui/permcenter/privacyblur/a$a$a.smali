.class Lcom/miui/permcenter/privacyblur/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacyblur/a$a;-><init>(Landroid/view/View;Lcom/miui/permcenter/privacyblur/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacyblur/a$d;

.field final synthetic b:Lcom/miui/permcenter/privacyblur/a$a;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacyblur/a$a;Lcom/miui/permcenter/privacyblur/a$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/a$a$a;->b:Lcom/miui/permcenter/privacyblur/a$a;

    iput-object p2, p0, Lcom/miui/permcenter/privacyblur/a$a$a;->a:Lcom/miui/permcenter/privacyblur/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/a$a$a;->a:Lcom/miui/permcenter/privacyblur/a$d;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/permcenter/privacyblur/a$a$a;->b:Lcom/miui/permcenter/privacyblur/a$a;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/miui/permcenter/privacyblur/a$d;->a(I)V

    :cond_0
    return-void
.end method
